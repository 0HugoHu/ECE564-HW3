//
//  Strings.swift
//  DukePeople
//
//  Created by Hugooooo on 9/6/23.
//

import Foundation

let sandboxURL: URL = getDocumentsDirectory()

let helpText = """
            --------------------------------------- Help ---------------------------------------
            Format:
            fn=first_name, ln=last_name, em=email,
            ro=role, ge=gender, fr=from
            - ro must be one of: Student, TA, Professor, Staff, or will be Other
            - ge must be one of: Male, Female, otherwise will be Other
            - Either of these parameters must not contains ',', space, or '='
            - The order of parameters does not matter
            
            1. Add: Add a person to the database.
                DUID is required, all other parameters are optional.
            2. Update: Update or add a person with given DUID.
                DUID is required, all other parameters are optional.
            3. Delete: Delete a person with given DUID.
                DUID is required, all other parameters are ignored.
            4. Find: Find a person with given DUID or given name.
                Either DUID or lName is required, fName is default with "*".
                Use "*" to represent any name. Not case sensitive.
            5. List All: List all people in the database.
            6. Help: Show this help message.
            
            CopyRight: Yadong (Hugo) Hu, 2023
            --------------------------------------------------------------------------------------\n
            """

let url = "http://ece564.rc.duke.edu:8080/entries"

let uploadHelpText = """
                -- Initial Upload --
                Upload your data to the server from the build-in JSON file
                
                -- Updated Upload --
                Update your remote profile with your local changes
                """

let downloadHelpText = """
                -- Download Replace --
                Clear your local data model, and fetch the entire records from the server
                
                -- Download Update --
                Merge your local data model with remote data
                
                -- Replace One Only --
                Replace your local specific one's profile with remote one
                """

let othersHelpText = """
                -- Load from Disk --
                Discard all data in memory, and sysnc with local sandbox's data
                
                -- Delete Myself --
                Delete your profile from the server
                """


let DUID = 1177060
let netID = "yh342"

let authString = "yh342:d50fdd0e33cd121a55dfe22b87085a8297511caac2e6b2e82d89e3c5da68faa7"

let JSONName = "dukePersonDict.json"


let base64ImageT = GetImageBase64(imageName: "Test").getBase64Image()
let jsonDictionary: [String: Any] = [
    "DUID": DUID,
    "netid": "yh342",
    "fName": "Hugo",
    "lName": "Hu",
    "from": "𝒟𝓊𝓇𝒽𝒶𝓂, 𝒩𝒞",
    "gender": "Non-binary",
    "role": "Student",
    "program": "𝑀𝒶𝓈𝓉𝑒𝓇 𝑜𝒻 𝐸𝓃𝑔𝒾𝓃𝑒𝑒𝓇𝒾𝓃𝑔",
    "plan": "𝐸𝓁𝑒𝒸𝓉𝓇𝒾𝒸𝒶𝓁 𝒶𝓃𝒹 𝒞𝑜𝓂𝓅𝓊𝓉𝑒𝓇 𝐸𝓃𝑔𝒾𝓃𝑒𝑒𝓇𝒾𝓃𝑔",
    "team": "W̲i̲t̲h̲ ̲J̲a̲n̲u̲s̲ ̲a̲n̲d̲ ̲M̲i̲n̲g̲h̲u̲i̲",
    "movie": "𝑯𝒂𝒓𝒓𝒚 𝑷𝒐𝒕𝒕𝒆𝒓",
    "hobby": "𝑭𝒊𝒔𝒉𝒊𝒏𝒈, 𝑷𝒉𝒐𝒕𝒐𝒈𝒓𝒂𝒑𝒉𝒚, 𝑩𝒂𝒅𝒎𝒊𝒏𝒕𝒐𝒏, 𝑺𝒘𝒊𝒎𝒊𝒏𝒈, 𝑪𝒐𝒅𝒊𝒏𝒈",
    "languages": ["𝓔𝓷𝓰𝓵𝓲𝓼𝓱", "𝓒𝓱𝓲𝓷𝓮𝓼𝓮"],
    "email": "𝟘@𝕙𝕦𝕘𝕠𝕙𝕦.𝕥𝕠𝕡",
    "description": "N/A",
    "picture": base64ImageT!
]
