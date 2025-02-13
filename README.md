# abarkhodro_application

Folder Structure

lib/ --
      |--UI
        |--common/  --> // We define some common widget to use it to other widget
        |--controllers/  --> // We define state manager (bloc s) into it to controll what change of data to change display
        |--screens/  --> // Into screens we have screens with widget of this
      |--data/ --> // In this folder we conversation to server
        |--models/  --> // Define models 
        |--server/  --> // In this folder we connect to server
        |--repositories/  --> // Define logic of server conversation
        |--usecasese/ --> // multiple repository into one
      |--localization/  --> // Define localization
        |--app_localization  --> // Define localization
      |routing --> // define routes
      |--utils/  -->  // Define some utils like theme
        |--theme/  --> // Define theme for my application
          |--color  --> // Define color of theme
          |--theme  --> // Define theme of application
        |--device  --> // Define device configs


// I use this structure becuase the project is not very big


Package Used:
 + flutter_bloc
 + retrofit
 + dio
 + json_annotation
 + get_it
 + go_router
 + freezed
 + shamsi_date
 + shared_prefrences
 + shimmer_animation


Genraly Senario:
  We have Four Screen
    1- Splash
    2- Login
    3- Home (Tickets)
    4- Chat

  splash/:
    When open app user see this screen at first
    in this screen we checked, user is authentication or not
    if not auth redirect to [Login] screen
    if auth redirect to [Home] screen

  login/:
    In this screen we have two field and confirm button
    first field for phone number and second for otp code.
    at first only have one field to user put it phone number and
    otp code field is hidden and then user put it phone number and 
    give otp code, disable the phone number field and show otp code 

    * the user can edit phone number (in fact back to last state)
  
  home/:
    In this screen should have tokens to know what user is loged in to get titles of conversations
    every conversation title with pagination 
    when scroll down get next page of this and append it to show more
    
    the user can edit title of every conversation

  chat/:
    In this screen we have chats and can send message
    in the bottom we have a field to send message with next to it we have button to send it
  



  some problems:
    1- server error and other error:
      TODO:
        after every request when get error show a snackbar and show the error message
        
        In login page not use snackbar, show bottom of fields

    2- auth error:
      TODO:
        when request and get auth error --> should check refresh token
        if is verify --> should get access token and try again
        if not verify --> remove all tokens and login again
    

  validation:
    We have four field on this application
    1- phone number
      valid: 
        should  11 digits (only digits)
        if 11 digits should start with 09

    2- otp code
      valid:
        only digits
        should 6 digits
      

    other field should not be empty


