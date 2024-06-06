import 'package:get/get.dart';
import 'package:little_flower/controllers/chatgpt_Controller/chatgpt_controller.dart';

final apiControl = Get.put(ChatGPTController());
final String apiKey = apiControl.apikey.value;
const String geminiModel = 'gemini-pro';
const String geminiVisionModel = 'gemini-pro-vision';
