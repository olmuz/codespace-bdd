Feature: Address Book

    Scenario: Add new address
        Given Logged in with default credentials
        Given I am on 'AddressBook' page
        When Click on button 'Add New Address'
        When Fill form:
            | label                             | value         | type     |  
            | First Name                        | Robot         | input    |  
            | Last Name                         | Bobot         | input    |  
            | Company                           | Robotics Inc  | input    |  
            | Telephone                         | 123123123     | input    |  
            | Fax                               | 123123412     | input    |  
            | Street Address                    | Robo circle 1 | input    |  
            | City                              | Kiev          | input    |  
            | Zip                               | 12345         | input    |  
            | Country                           | Ukraine       | select   |  
            | Use as my default billing address | x             | checkbox |  
        When Click on button 'Save Address'
        Then Text 'The address has been saved.' should be displayed
        