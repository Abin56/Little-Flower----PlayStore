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

const sendPushMessage = async (token, body, title) => {
  const url = "https://fcm.googleapis.com/v1/projects/little-flower-bb60b/messages:send";
  // eslint-disable-next-line max-len
  const serverKey = "ya29.c.c0AY_VpZg1xsoBNdQZz6F5A7zVyvh4gRNjCnNsk7wyl4a42dmr91B4B-qv6SpwohqyNzT7-TZEHRpc_h3b3PBI2241U7RUgenNxTj_hab8pvkARqwXuMj0EbwQaN0ANsINqlWcIO-GFkMtmU2ZDzDuefeNhXsRastTV5dnhm1csqyc9G09dGx7XKwwINQV1zpbUOIsYhiNhN2hWZjbRyQ6YKBdozoycYll8FLe3ZPws3lpI8BybaGuISzduq5rK3b8BjAIr-NE5mUJZsAMqsKXWiUTk80hg-XNc01DTCcdVs-TrchQTOLIBDsSXUxo6FLPqHxdhNSXowPebpjirrR358gpV8OEAOlOxQRukCFAFcylIuoDrXX8OeNIG385AM4nFu_9F8nS_7klMwyf1QYagFr7d1jRRhthycMFvbmM_arUct4UfFVslfyvtztwJ9B938ncn2QY9Ut522F36iWsyYmQw7pyX39jYaOJyrfijy7imO8QBO7dd32xgXtibg5QFRB-BSQSOY9t61tRgtr8WaMBkZ-hUoVO0dp0zJImhm8lVSdy-U4QX033heovk59ofXW8tBxhSJVnwc6xeyXZYMOdJcXZRJZv5_aJzI8npnYeVRdFXa8vb0OosqYIg_5joFJzoy4jk2hzryl63iMJbbvQY5Imc2ewBr40UyptlXnomuMmjJFmmRFO96cXImhnv9xFiZu8smoJrm4Z7Ymav5vrUxbyhI5678Ju7F1vucQ965azj-qcO9OdcshOX_2axpVaiohlrj1-Q80i4_8cUXYSdes-mzg3UhpbS_sQmXYj2duQXjVnxrXUMBz1kR80pckqkqnv7IroIq_M0UopcjoiJIWnkaZM4Ve-tagMRVzx11lOiOXbJreoweMBUqR_z_VRJsVXpwFsb4vyBuRVpXII-7O77dyj81zo9Uku_I7U7kgfXm7zqYZV5YzsUl_Wb46yhBm6QebOm2I5XQ_Bb8Ucv1n1I8tJXZJ0q8Xpkci7qr2Yv0d_bj8";
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
