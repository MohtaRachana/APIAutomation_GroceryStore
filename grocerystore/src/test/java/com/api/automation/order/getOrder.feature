Feature: Get the order
Background:
  Given url 'https://simple-grocery-store-api.glitch.me'
    * def File = Java.type('java.io.File')
    * def Scanner = Java.type('java.util.Scanner')
    * def path = 'C:/Worksapce/Karate_practice/KarateAssignmentApiAutomation/target/orderId.txt'
    * def file = new File(path)
    * def scanner = new Scanner(file)
    * def orderId = scanner.useDelimiter('\\Z').next()
    * def File = Java.type('java.io.File')
    * def Scanner = Java.type('java.util.Scanner')
    * def path = 'C:/Worksapce/Karate_practice/KarateAssignmentApiAutomation/target/secure.txt'
    * def file = new File(path)
    * def scanner = new Scanner(file)
    * def access_token = scanner.useDelimiter('\\Z').next()
    * scanner.close()
    
    Scenario:
    Given path '/orders/' + orderId
     And header Authorization = 'Bearer ' + access_token
    When method get
    Then status 200
    And print response