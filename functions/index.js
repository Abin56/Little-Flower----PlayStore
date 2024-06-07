/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

// const {onRequest} = require("firebase-functions/v2/https");
const {onDocumentUpdated} = require("firebase-functions/v2/firestore");

const functions = require("firebase-functions/v1");
// eslint-disable-next-line no-unused-vars
const logger = require("firebase-functions/logger");
const admin = require("firebase-admin");
// eslint-disable-next-line no-unused-vars
const fetch = require("node-fetch");
const {format} = require("date-fns");
admin.initializeApp();
const db = admin.firestore();
const dateConvert = (dateTime) => format(dateTime, "dd-MM-yyyy");
const timeConvert = (dateTime) => format(dateTime, "hh:mm:a");
const axios = require("axios");
let pushNotificationKey = "";

const sendPushMessage = async (token, body, title) => {
  const url = "https://fcm.googleapis.com/v1/projects/little-flower-bb60b/messages:send";
  // eslint-disable-next-line max-len
  const serverKey = pushNotificationKey;
  const message = {
    message: {
      token: token,
      notification: {
        title: title,
        body: body,
      },
      android: {
        notification: {
          title: "",
          body: "Check out the Top Story.",
          click_action: "TOP_STORY_ACTIVITY",
        },
        data: {story_id: "story_12345"},
      },
      apns: {
        payload: {
          aps: {category: "NEW_MESSAGE_CATEGORY"},
        },
      },
      data: {
        click_action: "FLUTTER_NOTIFICATION_CLICK",
        status: "done",
        body: body,
        title: title,
      },
    },
  };

  try {
    const response = await axios.post(url, message, {
      headers: {
        "Content-Type": "application/json",
        "Authorization": `Bearer ${serverKey}`,
      },
    });
    if (response.status === 200) {
      console.log("Notification sent successfully!");
    } else {
      console.log(`Failed to send notification: ${response.status}`);
      console.log(`Response body: ${response.data}`);
    }
  } catch (error) {
    console.error("Exception caught sending notification:", error);
  }
};

// Function to fetch parents data and send notifications
const fetchParents = async (parentID, studentName) => {
  try {
    const parentDoc = await db.collection("SchoolListCollection")
        .doc("utUU9qbdudhPatBECKL2I9jtvMf1")
        .collection("AllUsersDeviceID")
        .doc(parentID)
        .get();
    const parentData = parentDoc.data();
    await sendPushMessage(
        parentData["devideID"],
        // eslint-disable-next-line max-len
        `Sir/Madam, your child ${studentName} was present on ${dateConvert(new Date())} at ${timeConvert(new Date())} \nസർ/മാഡം,${dateConvert(new Date())} തീയതി ${timeConvert(new Date())}നിങ്ങളുടെ കുട്ടി ഹാജരായി`,
        "Attendance Notification from Lepton Schools",
    ).then(() => {
      db.collection("Attendance")
          .doc("utUU9qbdudhPatBECKL2I9jtvMf1")
          .update({CardID: "", AttendanceTaken: "false"});
    });
  } catch (error) {
    console.error("Error fetching parents data:", error);
  }
};

// Function to fetch student data based on card ID
const fetchCardDataStudents = async (cardID) => {
  try {
    const studentsSnapshot = await db.collection("SchoolListCollection")
        .doc("utUU9qbdudhPatBECKL2I9jtvMf1")
        .collection("AllStudents")
        .get();

    for (const studentDoc of studentsSnapshot.docs) {
      const studentData = studentDoc.data();
      if (studentData["cardID"] === cardID) {
        await fetchParents(studentData["parentId"], studentData["studentName"]);
      }
    }
  } catch (error) {
    console.error("Error fetching card data students:", error);
  }
};


// Firestore trigger to listen for changes in the Attendance document
exports.attendanceListener =
 onDocumentUpdated("Attendance/utUU9qbdudhPatBECKL2I9jtvMf1", async (event) => {
   try {
     const pushNotificationCollection = await db.collection("PushNotification")
         .doc("key")
         .get();
     pushNotificationKey =pushNotificationCollection.data()["key"];
     const attendanceDoc = await db.collection("Attendance")
         .doc("utUU9qbdudhPatBECKL2I9jtvMf1")
         .get();

     const cardIDvalue = attendanceDoc.data()["CardID"];
     if (cardIDvalue!== "") {
       await db.collection("Attendance")
           .doc("utUU9qbdudhPatBECKL2I9jtvMf1")
           .update({CardID: cardIDvalue});
       await fetchCardDataStudents(cardIDvalue);
     }
   } catch (error) {
     console.error("Error fetching attendance document:", error);
   }
 });
exports.yourV1CallableFunction = functions
    .runWith({
      enforceAppCheck: true,
      consumeAppCheckToken: true,
    })
    .https.onCall((data, context) => {
    });
