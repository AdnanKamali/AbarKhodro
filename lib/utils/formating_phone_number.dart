String fromattingPhoneNumber(String phoneNumber) {
  if (phoneNumber.length == 11) {
    return phoneNumber.replaceFirst("0", "+98");
  }
  return "0$phoneNumber";
}
