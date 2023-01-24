unit Win32.PropKey;

//===========================================================================
// Copyright (c) Microsoft Corporation. All rights reserved.
//===========================================================================
(* Win32 Header Translation Project
  (c) Norbert Sonnleitner 2023

  SDK Header Version: 10.0.22621.0

  The files are available under Apache License, Version 2.0.
  You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
*)

{$IFDEF FPC}
{$mode DelphiUnicode}{$H+}
{$ENDIF}

interface

uses
    Classes,
    SysUtils;

type

    // definition of PROPERTYKEY if no Win32.WTypes available
    TPROPERTYKEY = record
        fmtid: TGUID;
        pid: DWORD;
    end;

const

    //-----------------------------------------------------------------------------
    // Address properties

    //  Name:     System.Address.Country -- PKEY_Address_Country
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C07B4199-E1DF-4493-B1E1-DE5946FB58F8}, 100
    PKEY_Address_Country: TPROPERTYKEY = (fmtid: '{C07B4199-E1DF-4493-B1E1-DE5946FB58F8}'; pid: 100);

    //  Name:     System.Address.CountryCode -- PKEY_Address_CountryCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C07B4199-E1DF-4493-B1E1-DE5946FB58F8}, 101
    PKEY_Address_CountryCode: TPROPERTYKEY = (fmtid: '{C07B4199-E1DF-4493-B1E1-DE5946FB58F8}'; pid: 101);

    //  Name:     System.Address.Region -- PKEY_Address_Region
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C07B4199-E1DF-4493-B1E1-DE5946FB58F8}, 102
    PKEY_Address_Region: TPROPERTYKEY = (fmtid: '{C07B4199-E1DF-4493-B1E1-DE5946FB58F8}'; pid: 102);

    //  Name:     System.Address.RegionCode -- PKEY_Address_RegionCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C07B4199-E1DF-4493-B1E1-DE5946FB58F8}, 103
    PKEY_Address_RegionCode: TPROPERTYKEY = (fmtid: '{C07B4199-E1DF-4493-B1E1-DE5946FB58F8}'; pid: 103);

    //  Name:     System.Address.Town -- PKEY_Address_Town
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C07B4199-E1DF-4493-B1E1-DE5946FB58F8}, 104
    PKEY_Address_Town: TPROPERTYKEY = (fmtid: '{C07B4199-E1DF-4493-B1E1-DE5946FB58F8}'; pid: 104);

    //-----------------------------------------------------------------------------
    // Audio properties

    //  Name:     System.Audio.ChannelCount -- PKEY_Audio_ChannelCount
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_AudioSummaryInformation) {64440490-4C8B-11D1-8B70-080036B11A03}, 7 (PIDASI_CHANNEL_COUNT)

    //  Indicates the channel count for the audio file.  Values: 1 (mono), 2 (stereo).
    PKEY_Audio_ChannelCount: TPROPERTYKEY = (fmtid: '{64440490-4C8B-11D1-8B70-080036B11A03}'; pid: 7);

    // Possible discrete values for PKEY_Audio_ChannelCount are:
    AUDIO_CHANNELCOUNT_MONO = 1;
    AUDIO_CHANNELCOUNT_STEREO = 2;

    //  Name:     System.Audio.Compression -- PKEY_Audio_Compression
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_AudioSummaryInformation) {64440490-4C8B-11D1-8B70-080036B11A03}, 10 (PIDASI_COMPRESSION)


    PKEY_Audio_Compression: TPROPERTYKEY = (fmtid: '{64440490-4C8B-11D1-8B70-080036B11A03}'; pid: 10);

    //  Name:     System.Audio.EncodingBitrate -- PKEY_Audio_EncodingBitrate
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_AudioSummaryInformation) {64440490-4C8B-11D1-8B70-080036B11A03}, 4 (PIDASI_AVG_DATA_RATE)

    //  Indicates the average data rate in Hz for the audio file in "bits per second".
    PKEY_Audio_EncodingBitrate: TPROPERTYKEY = (fmtid: '{64440490-4C8B-11D1-8B70-080036B11A03}'; pid: 4);

    //  Name:     System.Audio.Format -- PKEY_Audio_Format
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)  Legacy code may treat this as VT_BSTR.
    //  FormatID: (FMTID_AudioSummaryInformation) {64440490-4C8B-11D1-8B70-080036B11A03}, 2 (PIDASI_FORMAT)

    //  Indicates the format of the audio file.
    PKEY_Audio_Format: TPROPERTYKEY = (fmtid: '{64440490-4C8B-11D1-8B70-080036B11A03}'; pid: 2);

    //  Name:     System.Audio.IsVariableBitRate -- PKEY_Audio_IsVariableBitRate
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {E6822FEE-8C17-4D62-823C-8E9CFCBD1D5C}, 100
    PKEY_Audio_IsVariableBitRate: TPROPERTYKEY = (fmtid: '{E6822FEE-8C17-4D62-823C-8E9CFCBD1D5C}'; pid: 100);

    //  Name:     System.Audio.PeakValue -- PKEY_Audio_PeakValue
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {2579E5D0-1116-4084-BD9A-9B4F7CB4DF5E}, 100
    PKEY_Audio_PeakValue: TPROPERTYKEY = (fmtid: '{2579E5D0-1116-4084-BD9A-9B4F7CB4DF5E}'; pid: 100);

    //  Name:     System.Audio.SampleRate -- PKEY_Audio_SampleRate
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_AudioSummaryInformation) {64440490-4C8B-11D1-8B70-080036B11A03}, 5 (PIDASI_SAMPLE_RATE)

    //  Indicates the audio sample rate for the audio file in "samples per second".
    PKEY_Audio_SampleRate: TPROPERTYKEY = (fmtid: '{64440490-4C8B-11D1-8B70-080036B11A03}'; pid: 5);

    //  Name:     System.Audio.SampleSize -- PKEY_Audio_SampleSize
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_AudioSummaryInformation) {64440490-4C8B-11D1-8B70-080036B11A03}, 6 (PIDASI_SAMPLE_SIZE)

    //  Indicates the audio sample size for the audio file in "bits per sample".
    PKEY_Audio_SampleSize: TPROPERTYKEY = (fmtid: '{64440490-4C8B-11D1-8B70-080036B11A03}'; pid: 6);

    //  Name:     System.Audio.StreamName -- PKEY_Audio_StreamName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_AudioSummaryInformation) {64440490-4C8B-11D1-8B70-080036B11A03}, 9 (PIDASI_STREAM_NAME)


    PKEY_Audio_StreamName: TPROPERTYKEY = (fmtid: '{64440490-4C8B-11D1-8B70-080036B11A03}'; pid: 9);

    //  Name:     System.Audio.StreamNumber -- PKEY_Audio_StreamNumber
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: (FMTID_AudioSummaryInformation) {64440490-4C8B-11D1-8B70-080036B11A03}, 8 (PIDASI_STREAM_NUMBER)


    PKEY_Audio_StreamNumber: TPROPERTYKEY = (fmtid: '{64440490-4C8B-11D1-8B70-080036B11A03}'; pid: 8);

    //-----------------------------------------------------------------------------
    // Calendar properties

    //  Name:     System.Calendar.Duration -- PKEY_Calendar_Duration
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {293CA35A-09AA-4DD2-B180-1FE245728A52}, 100

    //  The duration as specified in a string.
    PKEY_Calendar_Duration: TPROPERTYKEY = (fmtid: '{293CA35A-09AA-4DD2-B180-1FE245728A52}'; pid: 100);

    //  Name:     System.Calendar.IsOnline -- PKEY_Calendar_IsOnline
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {BFEE9149-E3E2-49A7-A862-C05988145CEC}, 100

    //  Identifies if the event is an online event.
    PKEY_Calendar_IsOnline: TPROPERTYKEY = (fmtid: '{BFEE9149-E3E2-49A7-A862-C05988145CEC}'; pid: 100);

    //  Name:     System.Calendar.IsRecurring -- PKEY_Calendar_IsRecurring
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {315B9C8D-80A9-4EF9-AE16-8E746DA51D70}, 100
    PKEY_Calendar_IsRecurring: TPROPERTYKEY = (fmtid: '{315B9C8D-80A9-4EF9-AE16-8E746DA51D70}'; pid: 100);

    //  Name:     System.Calendar.Location -- PKEY_Calendar_Location
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {F6272D18-CECC-40B1-B26A-3911717AA7BD}, 100
    PKEY_Calendar_Location: TPROPERTYKEY = (fmtid: '{F6272D18-CECC-40B1-B26A-3911717AA7BD}'; pid: 100);

    //  Name:     System.Calendar.OptionalAttendeeAddresses -- PKEY_Calendar_OptionalAttendeeAddresses
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {D55BAE5A-3892-417A-A649-C6AC5AAAEAB3}, 100
    PKEY_Calendar_OptionalAttendeeAddresses: TPROPERTYKEY = (fmtid: '{D55BAE5A-3892-417A-A649-C6AC5AAAEAB3}'; pid: 100);

    //  Name:     System.Calendar.OptionalAttendeeNames -- PKEY_Calendar_OptionalAttendeeNames
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {09429607-582D-437F-84C3-DE93A2B24C3C}, 100
    PKEY_Calendar_OptionalAttendeeNames: TPROPERTYKEY = (fmtid: '{09429607-582D-437F-84C3-DE93A2B24C3C}'; pid: 100);

    //  Name:     System.Calendar.OrganizerAddress -- PKEY_Calendar_OrganizerAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {744C8242-4DF5-456C-AB9E-014EFB9021E3}, 100

    //  Address of the organizer organizing the event.
    PKEY_Calendar_OrganizerAddress: TPROPERTYKEY = (fmtid: '{744C8242-4DF5-456C-AB9E-014EFB9021E3}'; pid: 100);

    //  Name:     System.Calendar.OrganizerName -- PKEY_Calendar_OrganizerName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {AAA660F9-9865-458E-B484-01BC7FE3973E}, 100

    //  Name of the organizer organizing the event.
    PKEY_Calendar_OrganizerName: TPROPERTYKEY = (fmtid: '{AAA660F9-9865-458E-B484-01BC7FE3973E}'; pid: 100);

    //  Name:     System.Calendar.ReminderTime -- PKEY_Calendar_ReminderTime
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {72FC5BA4-24F9-4011-9F3F-ADD27AFAD818}, 100
    PKEY_Calendar_ReminderTime: TPROPERTYKEY = (fmtid: '{72FC5BA4-24F9-4011-9F3F-ADD27AFAD818}'; pid: 100);

    //  Name:     System.Calendar.RequiredAttendeeAddresses -- PKEY_Calendar_RequiredAttendeeAddresses
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {0BA7D6C3-568D-4159-AB91-781A91FB71E5}, 100
    PKEY_Calendar_RequiredAttendeeAddresses: TPROPERTYKEY = (fmtid: '{0BA7D6C3-568D-4159-AB91-781A91FB71E5}'; pid: 100);

    //  Name:     System.Calendar.RequiredAttendeeNames -- PKEY_Calendar_RequiredAttendeeNames
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {B33AF30B-F552-4584-936C-CB93E5CDA29F}, 100
    PKEY_Calendar_RequiredAttendeeNames: TPROPERTYKEY = (fmtid: '{B33AF30B-F552-4584-936C-CB93E5CDA29F}'; pid: 100);

    //  Name:     System.Calendar.Resources -- PKEY_Calendar_Resources
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {00F58A38-C54B-4C40-8696-97235980EAE1}, 100
    PKEY_Calendar_Resources: TPROPERTYKEY = (fmtid: '{00F58A38-C54B-4C40-8696-97235980EAE1}'; pid: 100);

    //  Name:     System.Calendar.ResponseStatus -- PKEY_Calendar_ResponseStatus
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {188C1F91-3C40-4132-9EC5-D8B03B72A8A2}, 100

    //  This property stores the status of the user responses to meetings in her calendar.
    PKEY_Calendar_ResponseStatus: TPROPERTYKEY = (fmtid: '{188C1F91-3C40-4132-9EC5-D8B03B72A8A2}'; pid: 100);

    // Possible discrete values for PKEY_Calendar_ResponseStatus are:
    CALENDAR_RESPONSESTATUS_NONE = 0;
    CALENDAR_RESPONSESTATUS_ORGANIZED = 1;
    CALENDAR_RESPONSESTATUS_TENTATIVE = 2;
    CALENDAR_RESPONSESTATUS_ACCEPTED = 3;
    CALENDAR_RESPONSESTATUS_DECLINED = 4;
    CALENDAR_RESPONSESTATUS_NOTRESPONDED = 5;

    //  Name:     System.Calendar.ShowTimeAs -- PKEY_Calendar_ShowTimeAs
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {5BF396D4-5EB2-466F-BDE9-2FB3F2361D6E}, 100


    PKEY_Calendar_ShowTimeAs: TPROPERTYKEY = (fmtid: '{5BF396D4-5EB2-466F-BDE9-2FB3F2361D6E}'; pid: 100);

    // Possible discrete values for PKEY_Calendar_ShowTimeAs are:
    CALENDAR_SHOWTIMEAS_FREE = 0;
    CALENDAR_SHOWTIMEAS_TENTATIVE = 1;
    CALENDAR_SHOWTIMEAS_BUSY = 2;
    CALENDAR_SHOWTIMEAS_OOF = 3;

    //  Name:     System.Calendar.ShowTimeAsText -- PKEY_Calendar_ShowTimeAsText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {53DA57CF-62C0-45C4-81DE-7610BCEFD7F5}, 100

    //  This is the user-friendly form of System.Calendar.ShowTimeAs.  Not intended to be parsed
    //  programmatically.
    PKEY_Calendar_ShowTimeAsText: TPROPERTYKEY = (fmtid: '{53DA57CF-62C0-45C4-81DE-7610BCEFD7F5}'; pid: 100);

    //-----------------------------------------------------------------------------
    // Communication properties

    //  Name:     System.Communication.AccountName -- PKEY_Communication_AccountName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 9

    //  Account Name
    PKEY_Communication_AccountName: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 9);

    //  Name:     System.Communication.DateItemExpires -- PKEY_Communication_DateItemExpires
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {428040AC-A177-4C8A-9760-F6F761227F9A}, 100

    //  Date the item expires due to the retention policy.
    PKEY_Communication_DateItemExpires: TPROPERTYKEY = (fmtid: '{428040AC-A177-4C8A-9760-F6F761227F9A}'; pid: 100);

    //  Name:     System.Communication.Direction -- PKEY_Communication_Direction
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {8E531030-B960-4346-AE0D-66BC9A86FB94}, 100

    //  Indicates whether a communication was incoming or outgoing
    PKEY_Communication_Direction: TPROPERTYKEY = (fmtid: '{8E531030-B960-4346-AE0D-66BC9A86FB94}'; pid: 100);

    // Possible discrete values for PKEY_Communication_Direction are:
    COMMUNICATION_DIRECTION_UNKNOWN = 0;
    COMMUNICATION_DIRECTION_INCOMING = 1;
    COMMUNICATION_DIRECTION_OUTGOING = 2;

    //  Name:     System.Communication.FollowupIconIndex -- PKEY_Communication_FollowupIconIndex
    //  Type:     Int32 -- VT_I4
    //  FormatID: {83A6347E-6FE4-4F40-BA9C-C4865240D1F4}, 100

    //  This is the icon index used on messages marked for followup.
    PKEY_Communication_FollowupIconIndex: TPROPERTYKEY = (fmtid: '{83A6347E-6FE4-4F40-BA9C-C4865240D1F4}'; pid: 100);

    //  Name:     System.Communication.HeaderItem -- PKEY_Communication_HeaderItem
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {C9C34F84-2241-4401-B607-BD20ED75AE7F}, 100

    //  This property will be true if the item is a header item which means the item hasn't been fully downloaded.
    PKEY_Communication_HeaderItem: TPROPERTYKEY = (fmtid: '{C9C34F84-2241-4401-B607-BD20ED75AE7F}'; pid: 100);

    //  Name:     System.Communication.PolicyTag -- PKEY_Communication_PolicyTag
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {EC0B4191-AB0B-4C66-90B6-C6637CDEBBAB}, 100

    //  This a string used to identify the retention policy applied to the item.
    PKEY_Communication_PolicyTag: TPROPERTYKEY = (fmtid: '{EC0B4191-AB0B-4C66-90B6-C6637CDEBBAB}'; pid: 100);

    //  Name:     System.Communication.SecurityFlags -- PKEY_Communication_SecurityFlags
    //  Type:     Int32 -- VT_I4
    //  FormatID: {8619A4B6-9F4D-4429-8C0F-B996CA59E335}, 100

    //  Security flags associated with the item to know if the item is encrypted, signed or DRM enabled.
    PKEY_Communication_SecurityFlags: TPROPERTYKEY = (fmtid: '{8619A4B6-9F4D-4429-8C0F-B996CA59E335}'; pid: 100);

    //  Name:     System.Communication.Suffix -- PKEY_Communication_Suffix
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {807B653A-9E91-43EF-8F97-11CE04EE20C5}, 100
    PKEY_Communication_Suffix: TPROPERTYKEY = (fmtid: '{807B653A-9E91-43EF-8F97-11CE04EE20C5}'; pid: 100);

    //  Name:     System.Communication.TaskStatus -- PKEY_Communication_TaskStatus
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {BE1A72C6-9A1D-46B7-AFE7-AFAF8CEF4999}, 100
    PKEY_Communication_TaskStatus: TPROPERTYKEY = (fmtid: '{BE1A72C6-9A1D-46B7-AFE7-AFAF8CEF4999}'; pid: 100);

    // Possible discrete values for PKEY_Communication_TaskStatus are:
    TASKSTATUS_NOTSTARTED = 0;
    TASKSTATUS_INPROGRESS = 1;
    TASKSTATUS_COMPLETE = 2;
    TASKSTATUS_WAITING = 3;
    TASKSTATUS_DEFERRED = 4;

    //  Name:     System.Communication.TaskStatusText -- PKEY_Communication_TaskStatusText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A6744477-C237-475B-A075-54F34498292A}, 100

    //  This is the user-friendly form of System.Communication.TaskStatus.  Not intended to be parsed
    //  programmatically.
    PKEY_Communication_TaskStatusText: TPROPERTYKEY = (fmtid: '{A6744477-C237-475B-A075-54F34498292A}'; pid: 100);

    //-----------------------------------------------------------------------------
    // Computer properties

    //  Name:     System.Computer.DecoratedFreeSpace -- PKEY_Computer_DecoratedFreeSpace
    //  Type:     Multivalue UInt64 -- VT_VECTOR | VT_UI8  (For variants: VT_ARRAY | VT_UI8)
    //  FormatID: (FMTID_Volume) {9B174B35-40FF-11D2-A27E-00C04FC30871}, 7  (Filesystem Volume Properties)

    //  Free space and total space: "%s free of %s"
    PKEY_Computer_DecoratedFreeSpace: TPROPERTYKEY = (fmtid: '{9B174B35-40FF-11D2-A27E-00C04FC30871}'; pid: 7);

    //-----------------------------------------------------------------------------
    // Contact properties

    //  Name:     System.Contact.AccountPictureDynamicVideo -- PKEY_Contact_AccountPictureDynamicVideo
    //  Type:     Stream -- VT_STREAM
    //  FormatID: {0B8BB018-2725-4B44-92BA-7933AEB2DDE7}, 2

    //  This is a stream containing the data necessary to render a contact's dynamic video account picture.
    PKEY_Contact_AccountPictureDynamicVideo: TPROPERTYKEY = (fmtid: '{0B8BB018-2725-4B44-92BA-7933AEB2DDE7}'; pid: 2);

    //  Name:     System.Contact.AccountPictureLarge -- PKEY_Contact_AccountPictureLarge
    //  Type:     Stream -- VT_STREAM
    //  FormatID: {0B8BB018-2725-4B44-92BA-7933AEB2DDE7}, 3

    //  This is a stream containing the data necessary to render a contact's large account picture.
    PKEY_Contact_AccountPictureLarge: TPROPERTYKEY = (fmtid: '{0B8BB018-2725-4B44-92BA-7933AEB2DDE7}'; pid: 3);

    //  Name:     System.Contact.AccountPictureSmall -- PKEY_Contact_AccountPictureSmall
    //  Type:     Stream -- VT_STREAM
    //  FormatID: {0B8BB018-2725-4B44-92BA-7933AEB2DDE7}, 4

    //  This is a stream containing the data necessary to render a contact's small account picture.
    PKEY_Contact_AccountPictureSmall: TPROPERTYKEY = (fmtid: '{0B8BB018-2725-4B44-92BA-7933AEB2DDE7}'; pid: 4);

    //  Name:     System.Contact.Anniversary -- PKEY_Contact_Anniversary
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {9AD5BADB-CEA7-4470-A03D-B84E51B9949E}, 100
    PKEY_Contact_Anniversary: TPROPERTYKEY = (fmtid: '{9AD5BADB-CEA7-4470-A03D-B84E51B9949E}'; pid: 100);

    //  Name:     System.Contact.AssistantName -- PKEY_Contact_AssistantName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {CD102C9C-5540-4A88-A6F6-64E4981C8CD1}, 100
    PKEY_Contact_AssistantName: TPROPERTYKEY = (fmtid: '{CD102C9C-5540-4A88-A6F6-64E4981C8CD1}'; pid: 100);

    //  Name:     System.Contact.AssistantTelephone -- PKEY_Contact_AssistantTelephone
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {9A93244D-A7AD-4FF8-9B99-45EE4CC09AF6}, 100
    PKEY_Contact_AssistantTelephone: TPROPERTYKEY = (fmtid: '{9A93244D-A7AD-4FF8-9B99-45EE4CC09AF6}'; pid: 100);

    //  Name:     System.Contact.Birthday -- PKEY_Contact_Birthday
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {176DC63C-2688-4E89-8143-A347800F25E9}, 47

    //  Contact's birthday. It's recommended to use year 1601 if the birthday does not have year information.
    PKEY_Contact_Birthday: TPROPERTYKEY = (fmtid: '{176DC63C-2688-4E89-8143-A347800F25E9}'; pid: 47);

    //  Name:     System.Contact.BusinessAddress -- PKEY_Contact_BusinessAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {730FB6DD-CF7C-426B-A03F-BD166CC9EE24}, 100
    PKEY_Contact_BusinessAddress: TPROPERTYKEY = (fmtid: '{730FB6DD-CF7C-426B-A03F-BD166CC9EE24}'; pid: 100);

    //  Name:     System.Contact.BusinessAddress1Country -- PKEY_Contact_BusinessAddress1Country
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 119
    PKEY_Contact_BusinessAddress1Country: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 119);

    //  Name:     System.Contact.BusinessAddress1Locality -- PKEY_Contact_BusinessAddress1Locality
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 117
    PKEY_Contact_BusinessAddress1Locality: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 117);

    //  Name:     System.Contact.BusinessAddress1PostalCode -- PKEY_Contact_BusinessAddress1PostalCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 120
    PKEY_Contact_BusinessAddress1PostalCode: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 120);

    //  Name:     System.Contact.BusinessAddress1Region -- PKEY_Contact_BusinessAddress1Region
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 118
    PKEY_Contact_BusinessAddress1Region: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 118);

    //  Name:     System.Contact.BusinessAddress1Street -- PKEY_Contact_BusinessAddress1Street
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 116
    PKEY_Contact_BusinessAddress1Street: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 116);

    //  Name:     System.Contact.BusinessAddress2Country -- PKEY_Contact_BusinessAddress2Country
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 124
    PKEY_Contact_BusinessAddress2Country: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 124);

    //  Name:     System.Contact.BusinessAddress2Locality -- PKEY_Contact_BusinessAddress2Locality
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 122
    PKEY_Contact_BusinessAddress2Locality: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 122);

    //  Name:     System.Contact.BusinessAddress2PostalCode -- PKEY_Contact_BusinessAddress2PostalCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 125
    PKEY_Contact_BusinessAddress2PostalCode: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 125);

    //  Name:     System.Contact.BusinessAddress2Region -- PKEY_Contact_BusinessAddress2Region
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 123
    PKEY_Contact_BusinessAddress2Region: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 123);

    //  Name:     System.Contact.BusinessAddress2Street -- PKEY_Contact_BusinessAddress2Street
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 121
    PKEY_Contact_BusinessAddress2Street: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 121);

    //  Name:     System.Contact.BusinessAddress3Country -- PKEY_Contact_BusinessAddress3Country
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 129
    PKEY_Contact_BusinessAddress3Country: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 129);

    //  Name:     System.Contact.BusinessAddress3Locality -- PKEY_Contact_BusinessAddress3Locality
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 127
    PKEY_Contact_BusinessAddress3Locality: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 127);

    //  Name:     System.Contact.BusinessAddress3PostalCode -- PKEY_Contact_BusinessAddress3PostalCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 130
    PKEY_Contact_BusinessAddress3PostalCode: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 130);

    //  Name:     System.Contact.BusinessAddress3Region -- PKEY_Contact_BusinessAddress3Region
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 128
    PKEY_Contact_BusinessAddress3Region: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 128);

    //  Name:     System.Contact.BusinessAddress3Street -- PKEY_Contact_BusinessAddress3Street
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 126
    PKEY_Contact_BusinessAddress3Street: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 126);

    //  Name:     System.Contact.BusinessAddressCity -- PKEY_Contact_BusinessAddressCity
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {402B5934-EC5A-48C3-93E6-85E86A2D934E}, 100
    PKEY_Contact_BusinessAddressCity: TPROPERTYKEY = (fmtid: '{402B5934-EC5A-48C3-93E6-85E86A2D934E}'; pid: 100);

    //  Name:     System.Contact.BusinessAddressCountry -- PKEY_Contact_BusinessAddressCountry
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {B0B87314-FCF6-4FEB-8DFF-A50DA6AF561C}, 100
    PKEY_Contact_BusinessAddressCountry: TPROPERTYKEY = (fmtid: '{B0B87314-FCF6-4FEB-8DFF-A50DA6AF561C}'; pid: 100);

    //  Name:     System.Contact.BusinessAddressPostalCode -- PKEY_Contact_BusinessAddressPostalCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {E1D4A09E-D758-4CD1-B6EC-34A8B5A73F80}, 100
    PKEY_Contact_BusinessAddressPostalCode: TPROPERTYKEY = (fmtid: '{E1D4A09E-D758-4CD1-B6EC-34A8B5A73F80}'; pid: 100);

    //  Name:     System.Contact.BusinessAddressPostOfficeBox -- PKEY_Contact_BusinessAddressPostOfficeBox
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {BC4E71CE-17F9-48D5-BEE9-021DF0EA5409}, 100
    PKEY_Contact_BusinessAddressPostOfficeBox: TPROPERTYKEY = (fmtid: '{BC4E71CE-17F9-48D5-BEE9-021DF0EA5409}'; pid: 100);

    //  Name:     System.Contact.BusinessAddressState -- PKEY_Contact_BusinessAddressState
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {446F787F-10C4-41CB-A6C4-4D0343551597}, 100
    PKEY_Contact_BusinessAddressState: TPROPERTYKEY = (fmtid: '{446F787F-10C4-41CB-A6C4-4D0343551597}'; pid: 100);

    //  Name:     System.Contact.BusinessAddressStreet -- PKEY_Contact_BusinessAddressStreet
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {DDD1460F-C0BF-4553-8CE4-10433C908FB0}, 100
    PKEY_Contact_BusinessAddressStreet: TPROPERTYKEY = (fmtid: '{DDD1460F-C0BF-4553-8CE4-10433C908FB0}'; pid: 100);

    //  Name:     System.Contact.BusinessEmailAddresses -- PKEY_Contact_BusinessEmailAddresses
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {F271C659-7E5E-471F-BA25-7F77B286F836}, 100
    PKEY_Contact_BusinessEmailAddresses: TPROPERTYKEY = (fmtid: '{F271C659-7E5E-471F-BA25-7F77B286F836}'; pid: 100);

    //  Name:     System.Contact.BusinessFaxNumber -- PKEY_Contact_BusinessFaxNumber
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {91EFF6F3-2E27-42CA-933E-7C999FBE310B}, 100

    //  Business fax number of the contact.
    PKEY_Contact_BusinessFaxNumber: TPROPERTYKEY = (fmtid: '{91EFF6F3-2E27-42CA-933E-7C999FBE310B}'; pid: 100);

    //  Name:     System.Contact.BusinessHomePage -- PKEY_Contact_BusinessHomePage
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {56310920-2491-4919-99CE-EADB06FAFDB2}, 100
    PKEY_Contact_BusinessHomePage: TPROPERTYKEY = (fmtid: '{56310920-2491-4919-99CE-EADB06FAFDB2}'; pid: 100);

    //  Name:     System.Contact.BusinessTelephone -- PKEY_Contact_BusinessTelephone
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {6A15E5A0-0A1E-4CD7-BB8C-D2F1B0C929BC}, 100
    PKEY_Contact_BusinessTelephone: TPROPERTYKEY = (fmtid: '{6A15E5A0-0A1E-4CD7-BB8C-D2F1B0C929BC}'; pid: 100);

    //  Name:     System.Contact.CallbackTelephone -- PKEY_Contact_CallbackTelephone
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {BF53D1C3-49E0-4F7F-8567-5A821D8AC542}, 100
    PKEY_Contact_CallbackTelephone: TPROPERTYKEY = (fmtid: '{BF53D1C3-49E0-4F7F-8567-5A821D8AC542}'; pid: 100);

    //  Name:     System.Contact.CarTelephone -- PKEY_Contact_CarTelephone
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {8FDC6DEA-B929-412B-BA90-397A257465FE}, 100
    PKEY_Contact_CarTelephone: TPROPERTYKEY = (fmtid: '{8FDC6DEA-B929-412B-BA90-397A257465FE}'; pid: 100);

    //  Name:     System.Contact.Children -- PKEY_Contact_Children
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {D4729704-8EF1-43EF-9024-2BD381187FD5}, 100
    PKEY_Contact_Children: TPROPERTYKEY = (fmtid: '{D4729704-8EF1-43EF-9024-2BD381187FD5}'; pid: 100);

    //  Name:     System.Contact.CompanyMainTelephone -- PKEY_Contact_CompanyMainTelephone
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {8589E481-6040-473D-B171-7FA89C2708ED}, 100
    PKEY_Contact_CompanyMainTelephone: TPROPERTYKEY = (fmtid: '{8589E481-6040-473D-B171-7FA89C2708ED}'; pid: 100);

    //  Name:     System.Contact.ConnectedServiceDisplayName -- PKEY_Contact_ConnectedServiceDisplayName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {39B77F4F-A104-4863-B395-2DB2AD8F7BC1}, 100
    PKEY_Contact_ConnectedServiceDisplayName: TPROPERTYKEY = (fmtid: '{39B77F4F-A104-4863-B395-2DB2AD8F7BC1}'; pid: 100);

    //  Name:     System.Contact.ConnectedServiceIdentities -- PKEY_Contact_ConnectedServiceIdentities
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {80F41EB8-AFC4-4208-AA5F-CCE21A627281}, 100
    PKEY_Contact_ConnectedServiceIdentities: TPROPERTYKEY = (fmtid: '{80F41EB8-AFC4-4208-AA5F-CCE21A627281}'; pid: 100);

    //  Name:     System.Contact.ConnectedServiceName -- PKEY_Contact_ConnectedServiceName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {B5C84C9E-5927-46B5-A3CC-933C21B78469}, 100
    PKEY_Contact_ConnectedServiceName: TPROPERTYKEY = (fmtid: '{B5C84C9E-5927-46B5-A3CC-933C21B78469}'; pid: 100);

    //  Name:     System.Contact.ConnectedServiceSupportedActions -- PKEY_Contact_ConnectedServiceSupportedActions
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {A19FB7A9-024B-4371-A8BF-4D29C3E4E9C9}, 100
    PKEY_Contact_ConnectedServiceSupportedActions: TPROPERTYKEY = (fmtid: '{A19FB7A9-024B-4371-A8BF-4D29C3E4E9C9}'; pid: 100);

    //  Name:     System.Contact.DataSuppliers -- PKEY_Contact_DataSuppliers
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {9660C283-FC3A-4A08-A096-EED3AAC46DA2}, 100
    PKEY_Contact_DataSuppliers: TPROPERTYKEY = (fmtid: '{9660C283-FC3A-4A08-A096-EED3AAC46DA2}'; pid: 100);

    //  Name:     System.Contact.Department -- PKEY_Contact_Department
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FC9F7306-FF8F-4D49-9FB6-3FFE5C0951EC}, 100
    PKEY_Contact_Department: TPROPERTYKEY = (fmtid: '{FC9F7306-FF8F-4D49-9FB6-3FFE5C0951EC}'; pid: 100);

    //  Name:     System.Contact.DisplayBusinessPhoneNumbers -- PKEY_Contact_DisplayBusinessPhoneNumbers
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {364028DA-D895-41FE-A584-302B1BB70A76}, 100
    PKEY_Contact_DisplayBusinessPhoneNumbers: TPROPERTYKEY = (fmtid: '{364028DA-D895-41FE-A584-302B1BB70A76}'; pid: 100);

    //  Name:     System.Contact.DisplayHomePhoneNumbers -- PKEY_Contact_DisplayHomePhoneNumbers
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {5068BCDF-D697-4D85-8C53-1F1CDAB01763}, 100
    PKEY_Contact_DisplayHomePhoneNumbers: TPROPERTYKEY = (fmtid: '{5068BCDF-D697-4D85-8C53-1F1CDAB01763}'; pid: 100);

    //  Name:     System.Contact.DisplayMobilePhoneNumbers -- PKEY_Contact_DisplayMobilePhoneNumbers
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {9CB0C358-9D7A-46B1-B466-DCC6F1A3D93D}, 100
    PKEY_Contact_DisplayMobilePhoneNumbers: TPROPERTYKEY = (fmtid: '{9CB0C358-9D7A-46B1-B466-DCC6F1A3D93D}'; pid: 100);

    //  Name:     System.Contact.DisplayOtherPhoneNumbers -- PKEY_Contact_DisplayOtherPhoneNumbers
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {03089873-8EE8-4191-BD60-D31F72B7900B}, 100
    PKEY_Contact_DisplayOtherPhoneNumbers: TPROPERTYKEY = (fmtid: '{03089873-8EE8-4191-BD60-D31F72B7900B}'; pid: 100);

    //  Name:     System.Contact.EmailAddress -- PKEY_Contact_EmailAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {F8FA7FA3-D12B-4785-8A4E-691A94F7A3E7}, 100
    PKEY_Contact_EmailAddress: TPROPERTYKEY = (fmtid: '{F8FA7FA3-D12B-4785-8A4E-691A94F7A3E7}'; pid: 100);

    //  Name:     System.Contact.EmailAddress2 -- PKEY_Contact_EmailAddress2
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {38965063-EDC8-4268-8491-B7723172CF29}, 100
    PKEY_Contact_EmailAddress2: TPROPERTYKEY = (fmtid: '{38965063-EDC8-4268-8491-B7723172CF29}'; pid: 100);

    //  Name:     System.Contact.EmailAddress3 -- PKEY_Contact_EmailAddress3
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {644D37B4-E1B3-4BAD-B099-7E7C04966ACA}, 100
    PKEY_Contact_EmailAddress3: TPROPERTYKEY = (fmtid: '{644D37B4-E1B3-4BAD-B099-7E7C04966ACA}'; pid: 100);

    //  Name:     System.Contact.EmailAddresses -- PKEY_Contact_EmailAddresses
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {84D8F337-981D-44B3-9615-C7596DBA17E3}, 100
    PKEY_Contact_EmailAddresses: TPROPERTYKEY = (fmtid: '{84D8F337-981D-44B3-9615-C7596DBA17E3}'; pid: 100);

    //  Name:     System.Contact.EmailName -- PKEY_Contact_EmailName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {CC6F4F24-6083-4BD4-8754-674D0DE87AB8}, 100
    PKEY_Contact_EmailName: TPROPERTYKEY = (fmtid: '{CC6F4F24-6083-4BD4-8754-674D0DE87AB8}'; pid: 100);

    //  Name:     System.Contact.FileAsName -- PKEY_Contact_FileAsName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {F1A24AA7-9CA7-40F6-89EC-97DEF9FFE8DB}, 100
    PKEY_Contact_FileAsName: TPROPERTYKEY = (fmtid: '{F1A24AA7-9CA7-40F6-89EC-97DEF9FFE8DB}'; pid: 100);

    //  Name:     System.Contact.FirstName -- PKEY_Contact_FirstName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {14977844-6B49-4AAD-A714-A4513BF60460}, 100
    PKEY_Contact_FirstName: TPROPERTYKEY = (fmtid: '{14977844-6B49-4AAD-A714-A4513BF60460}'; pid: 100);

    //  Name:     System.Contact.FullName -- PKEY_Contact_FullName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {635E9051-50A5-4BA2-B9DB-4ED056C77296}, 100
    PKEY_Contact_FullName: TPROPERTYKEY = (fmtid: '{635E9051-50A5-4BA2-B9DB-4ED056C77296}'; pid: 100);

    //  Name:     System.Contact.Gender -- PKEY_Contact_Gender
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {3C8CEE58-D4F0-4CF9-B756-4E5D24447BCD}, 100
    PKEY_Contact_Gender: TPROPERTYKEY = (fmtid: '{3C8CEE58-D4F0-4CF9-B756-4E5D24447BCD}'; pid: 100);

    //  Name:     System.Contact.GenderValue -- PKEY_Contact_GenderValue
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {3C8CEE58-D4F0-4CF9-B756-4E5D24447BCD}, 101
    PKEY_Contact_GenderValue: TPROPERTYKEY = (fmtid: '{3C8CEE58-D4F0-4CF9-B756-4E5D24447BCD}'; pid: 101);

    // Possible discrete values for PKEY_Contact_GenderValue are:
    GENDERVALUE_UNSPECIFIED = 0;
    GENDERVALUE_FEMALE = 1;
    GENDERVALUE_MALE = 2;

    //  Name:     System.Contact.Hobbies -- PKEY_Contact_Hobbies
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {5DC2253F-5E11-4ADF-9CFE-910DD01E3E70}, 100
    PKEY_Contact_Hobbies: TPROPERTYKEY = (fmtid: '{5DC2253F-5E11-4ADF-9CFE-910DD01E3E70}'; pid: 100);

    //  Name:     System.Contact.HomeAddress -- PKEY_Contact_HomeAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {98F98354-617A-46B8-8560-5B1B64BF1F89}, 100
    PKEY_Contact_HomeAddress: TPROPERTYKEY = (fmtid: '{98F98354-617A-46B8-8560-5B1B64BF1F89}'; pid: 100);

    //  Name:     System.Contact.HomeAddress1Country -- PKEY_Contact_HomeAddress1Country
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 104
    PKEY_Contact_HomeAddress1Country: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 104);

    //  Name:     System.Contact.HomeAddress1Locality -- PKEY_Contact_HomeAddress1Locality
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 102
    PKEY_Contact_HomeAddress1Locality: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 102);

    //  Name:     System.Contact.HomeAddress1PostalCode -- PKEY_Contact_HomeAddress1PostalCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 105
    PKEY_Contact_HomeAddress1PostalCode: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 105);

    //  Name:     System.Contact.HomeAddress1Region -- PKEY_Contact_HomeAddress1Region
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 103
    PKEY_Contact_HomeAddress1Region: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 103);

    //  Name:     System.Contact.HomeAddress1Street -- PKEY_Contact_HomeAddress1Street
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 101
    PKEY_Contact_HomeAddress1Street: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 101);

    //  Name:     System.Contact.HomeAddress2Country -- PKEY_Contact_HomeAddress2Country
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 109
    PKEY_Contact_HomeAddress2Country: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 109);

    //  Name:     System.Contact.HomeAddress2Locality -- PKEY_Contact_HomeAddress2Locality
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 107
    PKEY_Contact_HomeAddress2Locality: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 107);

    //  Name:     System.Contact.HomeAddress2PostalCode -- PKEY_Contact_HomeAddress2PostalCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 110
    PKEY_Contact_HomeAddress2PostalCode: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 110);

    //  Name:     System.Contact.HomeAddress2Region -- PKEY_Contact_HomeAddress2Region
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 108
    PKEY_Contact_HomeAddress2Region: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 108);

    //  Name:     System.Contact.HomeAddress2Street -- PKEY_Contact_HomeAddress2Street
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 106
    PKEY_Contact_HomeAddress2Street: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 106);

    //  Name:     System.Contact.HomeAddress3Country -- PKEY_Contact_HomeAddress3Country
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 114
    PKEY_Contact_HomeAddress3Country: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 114);

    //  Name:     System.Contact.HomeAddress3Locality -- PKEY_Contact_HomeAddress3Locality
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 112
    PKEY_Contact_HomeAddress3Locality: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 112);

    //  Name:     System.Contact.HomeAddress3PostalCode -- PKEY_Contact_HomeAddress3PostalCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 115
    PKEY_Contact_HomeAddress3PostalCode: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 115);

    //  Name:     System.Contact.HomeAddress3Region -- PKEY_Contact_HomeAddress3Region
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 113
    PKEY_Contact_HomeAddress3Region: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 113);

    //  Name:     System.Contact.HomeAddress3Street -- PKEY_Contact_HomeAddress3Street
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 111
    PKEY_Contact_HomeAddress3Street: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 111);

    //  Name:     System.Contact.HomeAddressCity -- PKEY_Contact_HomeAddressCity
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {176DC63C-2688-4E89-8143-A347800F25E9}, 65
    PKEY_Contact_HomeAddressCity: TPROPERTYKEY = (fmtid: '{176DC63C-2688-4E89-8143-A347800F25E9}'; pid: 65);

    //  Name:     System.Contact.HomeAddressCountry -- PKEY_Contact_HomeAddressCountry
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {08A65AA1-F4C9-43DD-9DDF-A33D8E7EAD85}, 100
    PKEY_Contact_HomeAddressCountry: TPROPERTYKEY = (fmtid: '{08A65AA1-F4C9-43DD-9DDF-A33D8E7EAD85}'; pid: 100);

    //  Name:     System.Contact.HomeAddressPostalCode -- PKEY_Contact_HomeAddressPostalCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {8AFCC170-8A46-4B53-9EEE-90BAE7151E62}, 100
    PKEY_Contact_HomeAddressPostalCode: TPROPERTYKEY = (fmtid: '{8AFCC170-8A46-4B53-9EEE-90BAE7151E62}'; pid: 100);

    //  Name:     System.Contact.HomeAddressPostOfficeBox -- PKEY_Contact_HomeAddressPostOfficeBox
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {7B9F6399-0A3F-4B12-89BD-4ADC51C918AF}, 100
    PKEY_Contact_HomeAddressPostOfficeBox: TPROPERTYKEY = (fmtid: '{7B9F6399-0A3F-4B12-89BD-4ADC51C918AF}'; pid: 100);

    //  Name:     System.Contact.HomeAddressState -- PKEY_Contact_HomeAddressState
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C89A23D0-7D6D-4EB8-87D4-776A82D493E5}, 100
    PKEY_Contact_HomeAddressState: TPROPERTYKEY = (fmtid: '{C89A23D0-7D6D-4EB8-87D4-776A82D493E5}'; pid: 100);

    //  Name:     System.Contact.HomeAddressStreet -- PKEY_Contact_HomeAddressStreet
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {0ADEF160-DB3F-4308-9A21-06237B16FA2A}, 100
    PKEY_Contact_HomeAddressStreet: TPROPERTYKEY = (fmtid: '{0ADEF160-DB3F-4308-9A21-06237B16FA2A}'; pid: 100);

    //  Name:     System.Contact.HomeEmailAddresses -- PKEY_Contact_HomeEmailAddresses
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {56C90E9D-9D46-4963-886F-2E1CD9A694EF}, 100
    PKEY_Contact_HomeEmailAddresses: TPROPERTYKEY = (fmtid: '{56C90E9D-9D46-4963-886F-2E1CD9A694EF}'; pid: 100);

    //  Name:     System.Contact.HomeFaxNumber -- PKEY_Contact_HomeFaxNumber
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {660E04D6-81AB-4977-A09F-82313113AB26}, 100
    PKEY_Contact_HomeFaxNumber: TPROPERTYKEY = (fmtid: '{660E04D6-81AB-4977-A09F-82313113AB26}'; pid: 100);

    //  Name:     System.Contact.HomeTelephone -- PKEY_Contact_HomeTelephone
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {176DC63C-2688-4E89-8143-A347800F25E9}, 20
    PKEY_Contact_HomeTelephone: TPROPERTYKEY = (fmtid: '{176DC63C-2688-4E89-8143-A347800F25E9}'; pid: 20);

    //  Name:     System.Contact.IMAddress -- PKEY_Contact_IMAddress
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {D68DBD8A-3374-4B81-9972-3EC30682DB3D}, 100
    PKEY_Contact_IMAddress: TPROPERTYKEY = (fmtid: '{D68DBD8A-3374-4B81-9972-3EC30682DB3D}'; pid: 100);

    //  Name:     System.Contact.Initials -- PKEY_Contact_Initials
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {F3D8F40D-50CB-44A2-9718-40CB9119495D}, 100
    PKEY_Contact_Initials: TPROPERTYKEY = (fmtid: '{F3D8F40D-50CB-44A2-9718-40CB9119495D}'; pid: 100);

    //  Name:     System.Contact.JA.CompanyNamePhonetic -- PKEY_Contact_JA_CompanyNamePhonetic
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {897B3694-FE9E-43E6-8066-260F590C0100}, 2


    PKEY_Contact_JA_CompanyNamePhonetic: TPROPERTYKEY = (fmtid: '{897B3694-FE9E-43E6-8066-260F590C0100}'; pid: 2);

    //  Name:     System.Contact.JA.FirstNamePhonetic -- PKEY_Contact_JA_FirstNamePhonetic
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {897B3694-FE9E-43E6-8066-260F590C0100}, 3


    PKEY_Contact_JA_FirstNamePhonetic: TPROPERTYKEY = (fmtid: '{897B3694-FE9E-43E6-8066-260F590C0100}'; pid: 3);

    //  Name:     System.Contact.JA.LastNamePhonetic -- PKEY_Contact_JA_LastNamePhonetic
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {897B3694-FE9E-43E6-8066-260F590C0100}, 4


    PKEY_Contact_JA_LastNamePhonetic: TPROPERTYKEY = (fmtid: '{897B3694-FE9E-43E6-8066-260F590C0100}'; pid: 4);

    //  Name:     System.Contact.JobInfo1CompanyAddress -- PKEY_Contact_JobInfo1CompanyAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 120
    PKEY_Contact_JobInfo1CompanyAddress: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 120);

    //  Name:     System.Contact.JobInfo1CompanyName -- PKEY_Contact_JobInfo1CompanyName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 102
    PKEY_Contact_JobInfo1CompanyName: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 102);

    //  Name:     System.Contact.JobInfo1Department -- PKEY_Contact_JobInfo1Department
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 106
    PKEY_Contact_JobInfo1Department: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 106);

    //  Name:     System.Contact.JobInfo1Manager -- PKEY_Contact_JobInfo1Manager
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 105
    PKEY_Contact_JobInfo1Manager: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 105);

    //  Name:     System.Contact.JobInfo1OfficeLocation -- PKEY_Contact_JobInfo1OfficeLocation
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 104
    PKEY_Contact_JobInfo1OfficeLocation: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 104);

    //  Name:     System.Contact.JobInfo1Title -- PKEY_Contact_JobInfo1Title
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 103
    PKEY_Contact_JobInfo1Title: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 103);

    //  Name:     System.Contact.JobInfo1YomiCompanyName -- PKEY_Contact_JobInfo1YomiCompanyName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 101
    PKEY_Contact_JobInfo1YomiCompanyName: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 101);

    //  Name:     System.Contact.JobInfo2CompanyAddress -- PKEY_Contact_JobInfo2CompanyAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 121
    PKEY_Contact_JobInfo2CompanyAddress: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 121);

    //  Name:     System.Contact.JobInfo2CompanyName -- PKEY_Contact_JobInfo2CompanyName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 108
    PKEY_Contact_JobInfo2CompanyName: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 108);

    //  Name:     System.Contact.JobInfo2Department -- PKEY_Contact_JobInfo2Department
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 113
    PKEY_Contact_JobInfo2Department: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 113);

    //  Name:     System.Contact.JobInfo2Manager -- PKEY_Contact_JobInfo2Manager
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 112
    PKEY_Contact_JobInfo2Manager: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 112);

    //  Name:     System.Contact.JobInfo2OfficeLocation -- PKEY_Contact_JobInfo2OfficeLocation
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 110
    PKEY_Contact_JobInfo2OfficeLocation: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 110);

    //  Name:     System.Contact.JobInfo2Title -- PKEY_Contact_JobInfo2Title
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 109
    PKEY_Contact_JobInfo2Title: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 109);

    //  Name:     System.Contact.JobInfo2YomiCompanyName -- PKEY_Contact_JobInfo2YomiCompanyName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 107
    PKEY_Contact_JobInfo2YomiCompanyName: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 107);

    //  Name:     System.Contact.JobInfo3CompanyAddress -- PKEY_Contact_JobInfo3CompanyAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 123
    PKEY_Contact_JobInfo3CompanyAddress: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 123);

    //  Name:     System.Contact.JobInfo3CompanyName -- PKEY_Contact_JobInfo3CompanyName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 115
    PKEY_Contact_JobInfo3CompanyName: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 115);

    //  Name:     System.Contact.JobInfo3Department -- PKEY_Contact_JobInfo3Department
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 119
    PKEY_Contact_JobInfo3Department: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 119);

    //  Name:     System.Contact.JobInfo3Manager -- PKEY_Contact_JobInfo3Manager
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 118
    PKEY_Contact_JobInfo3Manager: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 118);

    //  Name:     System.Contact.JobInfo3OfficeLocation -- PKEY_Contact_JobInfo3OfficeLocation
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 117
    PKEY_Contact_JobInfo3OfficeLocation: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 117);

    //  Name:     System.Contact.JobInfo3Title -- PKEY_Contact_JobInfo3Title
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 116
    PKEY_Contact_JobInfo3Title: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 116);

    //  Name:     System.Contact.JobInfo3YomiCompanyName -- PKEY_Contact_JobInfo3YomiCompanyName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 114
    PKEY_Contact_JobInfo3YomiCompanyName: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 114);

    //  Name:     System.Contact.JobTitle -- PKEY_Contact_JobTitle
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {176DC63C-2688-4E89-8143-A347800F25E9}, 6
    PKEY_Contact_JobTitle: TPROPERTYKEY = (fmtid: '{176DC63C-2688-4E89-8143-A347800F25E9}'; pid: 6);

    //  Name:     System.Contact.Label -- PKEY_Contact_Label
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {97B0AD89-DF49-49CC-834E-660974FD755B}, 100
    PKEY_Contact_Label: TPROPERTYKEY = (fmtid: '{97B0AD89-DF49-49CC-834E-660974FD755B}'; pid: 100);

    //  Name:     System.Contact.LastName -- PKEY_Contact_LastName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {8F367200-C270-457C-B1D4-E07C5BCD90C7}, 100
    PKEY_Contact_LastName: TPROPERTYKEY = (fmtid: '{8F367200-C270-457C-B1D4-E07C5BCD90C7}'; pid: 100);

    //  Name:     System.Contact.MailingAddress -- PKEY_Contact_MailingAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C0AC206A-827E-4650-95AE-77E2BB74FCC9}, 100
    PKEY_Contact_MailingAddress: TPROPERTYKEY = (fmtid: '{C0AC206A-827E-4650-95AE-77E2BB74FCC9}'; pid: 100);

    //  Name:     System.Contact.MiddleName -- PKEY_Contact_MiddleName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {176DC63C-2688-4E89-8143-A347800F25E9}, 71
    PKEY_Contact_MiddleName: TPROPERTYKEY = (fmtid: '{176DC63C-2688-4E89-8143-A347800F25E9}'; pid: 71);

    //  Name:     System.Contact.MobileTelephone -- PKEY_Contact_MobileTelephone
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {176DC63C-2688-4E89-8143-A347800F25E9}, 35
    PKEY_Contact_MobileTelephone: TPROPERTYKEY = (fmtid: '{176DC63C-2688-4E89-8143-A347800F25E9}'; pid: 35);

    //  Name:     System.Contact.NickName -- PKEY_Contact_NickName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {176DC63C-2688-4E89-8143-A347800F25E9}, 74
    PKEY_Contact_NickName: TPROPERTYKEY = (fmtid: '{176DC63C-2688-4E89-8143-A347800F25E9}'; pid: 74);

    //  Name:     System.Contact.OfficeLocation -- PKEY_Contact_OfficeLocation
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {176DC63C-2688-4E89-8143-A347800F25E9}, 7
    PKEY_Contact_OfficeLocation: TPROPERTYKEY = (fmtid: '{176DC63C-2688-4E89-8143-A347800F25E9}'; pid: 7);

    //  Name:     System.Contact.OtherAddress -- PKEY_Contact_OtherAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {508161FA-313B-43D5-83A1-C1ACCF68622C}, 100
    PKEY_Contact_OtherAddress: TPROPERTYKEY = (fmtid: '{508161FA-313B-43D5-83A1-C1ACCF68622C}'; pid: 100);

    //  Name:     System.Contact.OtherAddress1Country -- PKEY_Contact_OtherAddress1Country
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 134
    PKEY_Contact_OtherAddress1Country: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 134);

    //  Name:     System.Contact.OtherAddress1Locality -- PKEY_Contact_OtherAddress1Locality
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 132
    PKEY_Contact_OtherAddress1Locality: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 132);

    //  Name:     System.Contact.OtherAddress1PostalCode -- PKEY_Contact_OtherAddress1PostalCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 135
    PKEY_Contact_OtherAddress1PostalCode: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 135);

    //  Name:     System.Contact.OtherAddress1Region -- PKEY_Contact_OtherAddress1Region
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 133
    PKEY_Contact_OtherAddress1Region: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 133);

    //  Name:     System.Contact.OtherAddress1Street -- PKEY_Contact_OtherAddress1Street
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 131
    PKEY_Contact_OtherAddress1Street: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 131);

    //  Name:     System.Contact.OtherAddress2Country -- PKEY_Contact_OtherAddress2Country
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 139
    PKEY_Contact_OtherAddress2Country: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 139);

    //  Name:     System.Contact.OtherAddress2Locality -- PKEY_Contact_OtherAddress2Locality
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 137
    PKEY_Contact_OtherAddress2Locality: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 137);

    //  Name:     System.Contact.OtherAddress2PostalCode -- PKEY_Contact_OtherAddress2PostalCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 140
    PKEY_Contact_OtherAddress2PostalCode: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 140);

    //  Name:     System.Contact.OtherAddress2Region -- PKEY_Contact_OtherAddress2Region
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 138
    PKEY_Contact_OtherAddress2Region: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 138);

    //  Name:     System.Contact.OtherAddress2Street -- PKEY_Contact_OtherAddress2Street
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 136
    PKEY_Contact_OtherAddress2Street: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 136);

    //  Name:     System.Contact.OtherAddress3Country -- PKEY_Contact_OtherAddress3Country
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 144
    PKEY_Contact_OtherAddress3Country: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 144);

    //  Name:     System.Contact.OtherAddress3Locality -- PKEY_Contact_OtherAddress3Locality
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 142
    PKEY_Contact_OtherAddress3Locality: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 142);

    //  Name:     System.Contact.OtherAddress3PostalCode -- PKEY_Contact_OtherAddress3PostalCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 145
    PKEY_Contact_OtherAddress3PostalCode: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 145);

    //  Name:     System.Contact.OtherAddress3Region -- PKEY_Contact_OtherAddress3Region
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 143
    PKEY_Contact_OtherAddress3Region: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 143);

    //  Name:     System.Contact.OtherAddress3Street -- PKEY_Contact_OtherAddress3Street
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7B6F596-D678-4BC1-B05F-0203D27E8AA1}, 141
    PKEY_Contact_OtherAddress3Street: TPROPERTYKEY = (fmtid: '{A7B6F596-D678-4BC1-B05F-0203D27E8AA1}'; pid: 141);

    //  Name:     System.Contact.OtherAddressCity -- PKEY_Contact_OtherAddressCity
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {6E682923-7F7B-4F0C-A337-CFCA296687BF}, 100
    PKEY_Contact_OtherAddressCity: TPROPERTYKEY = (fmtid: '{6E682923-7F7B-4F0C-A337-CFCA296687BF}'; pid: 100);

    //  Name:     System.Contact.OtherAddressCountry -- PKEY_Contact_OtherAddressCountry
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {8F167568-0AAE-4322-8ED9-6055B7B0E398}, 100
    PKEY_Contact_OtherAddressCountry: TPROPERTYKEY = (fmtid: '{8F167568-0AAE-4322-8ED9-6055B7B0E398}'; pid: 100);

    //  Name:     System.Contact.OtherAddressPostalCode -- PKEY_Contact_OtherAddressPostalCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {95C656C1-2ABF-4148-9ED3-9EC602E3B7CD}, 100
    PKEY_Contact_OtherAddressPostalCode: TPROPERTYKEY = (fmtid: '{95C656C1-2ABF-4148-9ED3-9EC602E3B7CD}'; pid: 100);

    //  Name:     System.Contact.OtherAddressPostOfficeBox -- PKEY_Contact_OtherAddressPostOfficeBox
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {8B26EA41-058F-43F6-AECC-4035681CE977}, 100
    PKEY_Contact_OtherAddressPostOfficeBox: TPROPERTYKEY = (fmtid: '{8B26EA41-058F-43F6-AECC-4035681CE977}'; pid: 100);

    //  Name:     System.Contact.OtherAddressState -- PKEY_Contact_OtherAddressState
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {71B377D6-E570-425F-A170-809FAE73E54E}, 100
    PKEY_Contact_OtherAddressState: TPROPERTYKEY = (fmtid: '{71B377D6-E570-425F-A170-809FAE73E54E}'; pid: 100);

    //  Name:     System.Contact.OtherAddressStreet -- PKEY_Contact_OtherAddressStreet
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FF962609-B7D6-4999-862D-95180D529AEA}, 100
    PKEY_Contact_OtherAddressStreet: TPROPERTYKEY = (fmtid: '{FF962609-B7D6-4999-862D-95180D529AEA}'; pid: 100);

    //  Name:     System.Contact.OtherEmailAddresses -- PKEY_Contact_OtherEmailAddresses
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {11D6336B-38C4-4EC9-84D6-EB38D0B150AF}, 100
    PKEY_Contact_OtherEmailAddresses: TPROPERTYKEY = (fmtid: '{11D6336B-38C4-4EC9-84D6-EB38D0B150AF}'; pid: 100);

    //  Name:     System.Contact.PagerTelephone -- PKEY_Contact_PagerTelephone
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {D6304E01-F8F5-4F45-8B15-D024A6296789}, 100
    PKEY_Contact_PagerTelephone: TPROPERTYKEY = (fmtid: '{D6304E01-F8F5-4F45-8B15-D024A6296789}'; pid: 100);

    //  Name:     System.Contact.PersonalTitle -- PKEY_Contact_PersonalTitle
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {176DC63C-2688-4E89-8143-A347800F25E9}, 69
    PKEY_Contact_PersonalTitle: TPROPERTYKEY = (fmtid: '{176DC63C-2688-4E89-8143-A347800F25E9}'; pid: 69);

    //  Name:     System.Contact.PhoneNumbersCanonical -- PKEY_Contact_PhoneNumbersCanonical
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {D042D2A1-927E-40B5-A503-6EDBD42A517E}, 100
    PKEY_Contact_PhoneNumbersCanonical: TPROPERTYKEY = (fmtid: '{D042D2A1-927E-40B5-A503-6EDBD42A517E}'; pid: 100);

    //  Name:     System.Contact.Prefix -- PKEY_Contact_Prefix
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {176DC63C-2688-4E89-8143-A347800F25E9}, 75
    PKEY_Contact_Prefix: TPROPERTYKEY = (fmtid: '{176DC63C-2688-4E89-8143-A347800F25E9}'; pid: 75);

    //  Name:     System.Contact.PrimaryAddressCity -- PKEY_Contact_PrimaryAddressCity
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C8EA94F0-A9E3-4969-A94B-9C62A95324E0}, 100
    PKEY_Contact_PrimaryAddressCity: TPROPERTYKEY = (fmtid: '{C8EA94F0-A9E3-4969-A94B-9C62A95324E0}'; pid: 100);

    //  Name:     System.Contact.PrimaryAddressCountry -- PKEY_Contact_PrimaryAddressCountry
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {E53D799D-0F3F-466E-B2FF-74634A3CB7A4}, 100
    PKEY_Contact_PrimaryAddressCountry: TPROPERTYKEY = (fmtid: '{E53D799D-0F3F-466E-B2FF-74634A3CB7A4}'; pid: 100);

    //  Name:     System.Contact.PrimaryAddressPostalCode -- PKEY_Contact_PrimaryAddressPostalCode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {18BBD425-ECFD-46EF-B612-7B4A6034EDA0}, 100
    PKEY_Contact_PrimaryAddressPostalCode: TPROPERTYKEY = (fmtid: '{18BBD425-ECFD-46EF-B612-7B4A6034EDA0}'; pid: 100);

    //  Name:     System.Contact.PrimaryAddressPostOfficeBox -- PKEY_Contact_PrimaryAddressPostOfficeBox
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {DE5EF3C7-46E1-484E-9999-62C5308394C1}, 100
    PKEY_Contact_PrimaryAddressPostOfficeBox: TPROPERTYKEY = (fmtid: '{DE5EF3C7-46E1-484E-9999-62C5308394C1}'; pid: 100);

    //  Name:     System.Contact.PrimaryAddressState -- PKEY_Contact_PrimaryAddressState
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {F1176DFE-7138-4640-8B4C-AE375DC70A6D}, 100
    PKEY_Contact_PrimaryAddressState: TPROPERTYKEY = (fmtid: '{F1176DFE-7138-4640-8B4C-AE375DC70A6D}'; pid: 100);

    //  Name:     System.Contact.PrimaryAddressStreet -- PKEY_Contact_PrimaryAddressStreet
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {63C25B20-96BE-488F-8788-C09C407AD812}, 100
    PKEY_Contact_PrimaryAddressStreet: TPROPERTYKEY = (fmtid: '{63C25B20-96BE-488F-8788-C09C407AD812}'; pid: 100);

    //  Name:     System.Contact.PrimaryEmailAddress -- PKEY_Contact_PrimaryEmailAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {176DC63C-2688-4E89-8143-A347800F25E9}, 48
    PKEY_Contact_PrimaryEmailAddress: TPROPERTYKEY = (fmtid: '{176DC63C-2688-4E89-8143-A347800F25E9}'; pid: 48);

    //  Name:     System.Contact.PrimaryTelephone -- PKEY_Contact_PrimaryTelephone
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {176DC63C-2688-4E89-8143-A347800F25E9}, 25
    PKEY_Contact_PrimaryTelephone: TPROPERTYKEY = (fmtid: '{176DC63C-2688-4E89-8143-A347800F25E9}'; pid: 25);

    //  Name:     System.Contact.Profession -- PKEY_Contact_Profession
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {7268AF55-1CE4-4F6E-A41F-B6E4EF10E4A9}, 100
    PKEY_Contact_Profession: TPROPERTYKEY = (fmtid: '{7268AF55-1CE4-4F6E-A41F-B6E4EF10E4A9}'; pid: 100);

    //  Name:     System.Contact.SpouseName -- PKEY_Contact_SpouseName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {9D2408B6-3167-422B-82B0-F583B7A7CFE3}, 100
    PKEY_Contact_SpouseName: TPROPERTYKEY = (fmtid: '{9D2408B6-3167-422B-82B0-F583B7A7CFE3}'; pid: 100);

    //  Name:     System.Contact.Suffix -- PKEY_Contact_Suffix
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {176DC63C-2688-4E89-8143-A347800F25E9}, 73
    PKEY_Contact_Suffix: TPROPERTYKEY = (fmtid: '{176DC63C-2688-4E89-8143-A347800F25E9}'; pid: 73);

    //  Name:     System.Contact.TelexNumber -- PKEY_Contact_TelexNumber
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C554493C-C1F7-40C1-A76C-EF8C0614003E}, 100
    PKEY_Contact_TelexNumber: TPROPERTYKEY = (fmtid: '{C554493C-C1F7-40C1-A76C-EF8C0614003E}'; pid: 100);

    //  Name:     System.Contact.TTYTDDTelephone -- PKEY_Contact_TTYTDDTelephone
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {AAF16BAC-2B55-45E6-9F6D-415EB94910DF}, 100
    PKEY_Contact_TTYTDDTelephone: TPROPERTYKEY = (fmtid: '{AAF16BAC-2B55-45E6-9F6D-415EB94910DF}'; pid: 100);

    //  Name:     System.Contact.WebPage -- PKEY_Contact_WebPage
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 18
    PKEY_Contact_WebPage: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 18);

    //  Name:     System.Contact.Webpage2 -- PKEY_Contact_Webpage2
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 124
    PKEY_Contact_Webpage2: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 124);

    //  Name:     System.Contact.Webpage3 -- PKEY_Contact_Webpage3
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}, 125
    PKEY_Contact_Webpage3: TPROPERTYKEY = (fmtid: '{00F63DD8-22BD-4A5D-BA34-5CB0B9BDCB03}'; pid: 125);

    //-----------------------------------------------------------------------------
    // Core properties

    //  Name:     System.AcquisitionID -- PKEY_AcquisitionID
    //  Type:     Int32 -- VT_I4
    //  FormatID: {65A98875-3C80-40AB-ABBC-EFDAF77DBEE2}, 100

    //  Hash to determine acquisition session.
    PKEY_AcquisitionID: TPROPERTYKEY = (fmtid: '{65A98875-3C80-40AB-ABBC-EFDAF77DBEE2}'; pid: 100);

    //  Name:     System.ApplicationDefinedProperties -- PKEY_ApplicationDefinedProperties
    //  Type:     Any -- VT_NULL  Legacy code may treat this as VT_UNKNOWN.
    //  FormatID: {CDBFC167-337E-41D8-AF7C-8C09205429C7}, 100
    PKEY_ApplicationDefinedProperties: TPROPERTYKEY = (fmtid: '{CDBFC167-337E-41D8-AF7C-8C09205429C7}'; pid: 100);

    //  Name:     System.ApplicationName -- PKEY_ApplicationName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)  Legacy code may treat this as VT_LPSTR.
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 18 (PIDSI_APPNAME)


    PKEY_ApplicationName: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 18);

    //  Name:     System.AppZoneIdentifier -- PKEY_AppZoneIdentifier
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {502CFEAB-47EB-459C-B960-E6D8728F7701}, 102

    //  Mark of the app container. The zone identifier as determined by the file's last writer.
    PKEY_AppZoneIdentifier: TPROPERTYKEY = (fmtid: '{502CFEAB-47EB-459C-B960-E6D8728F7701}'; pid: 102);

    //  Name:     System.Author -- PKEY_Author
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)  Legacy code may treat this as VT_LPSTR.
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 4 (PIDSI_AUTHOR)


    PKEY_Author: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 4);

    //  Name:     System.CachedFileUpdaterContentIdForConflictResolution -- PKEY_CachedFileUpdaterContentIdForConflictResolution
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 114
    PKEY_CachedFileUpdaterContentIdForConflictResolution: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 114);

    //  Name:     System.CachedFileUpdaterContentIdForStream -- PKEY_CachedFileUpdaterContentIdForStream
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 113
    PKEY_CachedFileUpdaterContentIdForStream: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 113);

    //  Name:     System.Capacity -- PKEY_Capacity
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: (FMTID_Volume) {9B174B35-40FF-11D2-A27E-00C04FC30871}, 3 (PID_VOLUME_CAPACITY)  (Filesystem Volume Properties)

    //  The amount of total space in bytes.
    PKEY_Capacity: TPROPERTYKEY = (fmtid: '{9B174B35-40FF-11D2-A27E-00C04FC30871}'; pid: 3);

    //  Name:     System.Category -- PKEY_Category
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 2 (PIDDSI_CATEGORY)

    //  Legacy code treats this as VT_LPSTR.
    PKEY_Category: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 2);

    //  Name:     System.Comment -- PKEY_Comment
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)  Legacy code may treat this as VT_LPSTR.
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 6 (PIDSI_COMMENTS)

    //  Comments.
    PKEY_Comment: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 6);

    //  Name:     System.Company -- PKEY_Company
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 15 (PIDDSI_COMPANY)

    //  The company or publisher.
    PKEY_Company: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 15);

    //  Name:     System.ComputerName -- PKEY_ComputerName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 5 (PID_COMPUTERNAME)


    PKEY_ComputerName: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 5);

    //  Name:     System.ContainedItems -- PKEY_ContainedItems
    //  Type:     Multivalue Guid -- VT_VECTOR | VT_CLSID  (For variants: VT_ARRAY | VT_CLSID)
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 29

    //  The list of type of items, this item contains. For example, this item contains urls, attachments etc.
    //  This is represented as a vector array of GUIDs where each GUID represents certain type.
    PKEY_ContainedItems: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 29);

    //  Name:     System.ContentId -- PKEY_ContentId
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 132

    //  Durable identifier for a file that can be used to prevent duplication of activities across devices.
    PKEY_ContentId: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 132);

    //  Name:     System.ContentStatus -- PKEY_ContentStatus
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 27
    PKEY_ContentStatus: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 27);

    //  Name:     System.ContentType -- PKEY_ContentType
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 26
    PKEY_ContentType: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 26);

    //  Name:     System.ContentUri -- PKEY_ContentUri
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 131

    //  Durable identifier for a file that can be used across devices to access file.
    PKEY_ContentUri: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 131);

    //  Name:     System.Copyright -- PKEY_Copyright
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 11 (PIDMSI_COPYRIGHT)


    PKEY_Copyright: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 11);

    //  Name:     System.CreatorAppId -- PKEY_CreatorAppId
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C2EA046E-033C-4E91-BD5B-D4942F6BBE49}, 2

    //  The AppId of the application that created this file.
    PKEY_CreatorAppId: TPROPERTYKEY = (fmtid: '{C2EA046E-033C-4E91-BD5B-D4942F6BBE49}'; pid: 2);

    //  Name:     System.CreatorOpenWithUIOptions -- PKEY_CreatorOpenWithUIOptions
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {C2EA046E-033C-4E91-BD5B-D4942F6BBE49}, 3

    //  Provides options that influence the behavior of UI controls that launch the file with the app specified in System.CreatorAppId.
    PKEY_CreatorOpenWithUIOptions: TPROPERTYKEY = (fmtid: '{C2EA046E-033C-4E91-BD5B-D4942F6BBE49}'; pid: 3);

    // Possible discrete values for PKEY_CreatorOpenWithUIOptions are:
    CREATOROPENWITHUIOPTION_HIDDEN = 0;
    CREATOROPENWITHUIOPTION_VISIBLE = 1;

    //  Name:     System.DataObjectFormat -- PKEY_DataObjectFormat
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {1E81A3F8-A30F-4247-B9EE-1D0368A9425C}, 2

    //  Data object format. String value is the clipboard format name.
    PKEY_DataObjectFormat: TPROPERTYKEY = (fmtid: '{1E81A3F8-A30F-4247-B9EE-1D0368A9425C}'; pid: 2);

    //  Name:     System.DateAccessed -- PKEY_DateAccessed
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 16 (PID_STG_ACCESSTIME)

    //  The time of the last access to the item.  The Indexing Service friendly name is 'access'.
    PKEY_DateAccessed: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 16);

    //  Name:     System.DateAcquired -- PKEY_DateAcquired
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {2CBAA8F5-D81F-47CA-B17A-F8D822300131}, 100

    //  The time the file entered the system via acquisition.  This is not the same as System.DateImported.
    //  Examples are when pictures are acquired from a camera, or when music is purchased online.
    PKEY_DateAcquired: TPROPERTYKEY = (fmtid: '{2CBAA8F5-D81F-47CA-B17A-F8D822300131}'; pid: 100);

    //  Name:     System.DateArchived -- PKEY_DateArchived
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {43F8D7B7-A444-4F87-9383-52271C9B915C}, 100
    PKEY_DateArchived: TPROPERTYKEY = (fmtid: '{43F8D7B7-A444-4F87-9383-52271C9B915C}'; pid: 100);

    //  Name:     System.DateCompleted -- PKEY_DateCompleted
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {72FAB781-ACDA-43E5-B155-B2434F85E678}, 100
    PKEY_DateCompleted: TPROPERTYKEY = (fmtid: '{72FAB781-ACDA-43E5-B155-B2434F85E678}'; pid: 100);

    //  Name:     System.DateCreated -- PKEY_DateCreated
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 15 (PID_STG_CREATETIME)

    //  The date and time the item was created. The Indexing Service friendly name is 'create'.
    PKEY_DateCreated: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 15);

    //  Name:     System.DateImported -- PKEY_DateImported
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 18258

    //  The time the file is imported into a separate database.  This is not the same as System.DateAcquired.  (Eg, 2003:05:22 13:55:04)
    PKEY_DateImported: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 18258);

    //  Name:     System.DateModified -- PKEY_DateModified
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 14 (PID_STG_WRITETIME)

    //  The date and time of the last write to the item. The Indexing Service friendly name is 'write'.
    PKEY_DateModified: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 14);

    //  Name:     System.DefaultSaveLocationDisplay -- PKEY_DefaultSaveLocationDisplay
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}, 10

    //  Helps display as an icon whether or not a location is the default save location for owner and/or non-owners of a library
    PKEY_DefaultSaveLocationDisplay: TPROPERTYKEY = (fmtid: '{5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}'; pid: 10);

    // Possible discrete values for PKEY_DefaultSaveLocationDisplay are:
    ISDEFAULTSAVE_NONE = 0;
    ISDEFAULTSAVE_OWNER = 1;
    ISDEFAULTSAVE_NONOWNER = 2;
    ISDEFAULTSAVE_BOTH = 3;

    //  Name:     System.DueDate -- PKEY_DueDate
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {3F8472B5-E0AF-4DB2-8071-C53FE76AE7CE}, 100
    PKEY_DueDate: TPROPERTYKEY = (fmtid: '{3F8472B5-E0AF-4DB2-8071-C53FE76AE7CE}'; pid: 100);

    //  Name:     System.EndDate -- PKEY_EndDate
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {C75FAA05-96FD-49E7-9CB4-9F601082D553}, 100
    PKEY_EndDate: TPROPERTYKEY = (fmtid: '{C75FAA05-96FD-49E7-9CB4-9F601082D553}'; pid: 100);

    //  Name:     System.ExpandoProperties -- PKEY_ExpandoProperties
    //  Type:     Any -- VT_NULL  Legacy code may treat this as VT_UNKNOWN.
    //  FormatID: {6FA20DE6-D11C-4D9D-A154-64317628C12D}, 100

    //  Properties that are not stored in the item itself, where the properties are in the form of a stream containing a SERIALIZEDPROPSTORAGE.
    PKEY_ExpandoProperties: TPROPERTYKEY = (fmtid: '{6FA20DE6-D11C-4D9D-A154-64317628C12D}'; pid: 100);

    //  Name:     System.FileAllocationSize -- PKEY_FileAllocationSize
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 18 (PID_STG_ALLOCSIZE)


    PKEY_FileAllocationSize: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 18);

    //  Name:     System.FileAttributes -- PKEY_FileAttributes
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 13 (PID_STG_ATTRIBUTES)

    //  This is the WIN32_FIND_DATA dwFileAttributes for the file-based item.
    PKEY_FileAttributes: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 13);

    //  Name:     System.FileCount -- PKEY_FileCount
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 12


    PKEY_FileCount: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 12);

    //  Name:     System.FileDescription -- PKEY_FileDescription
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSFMTID_VERSION) {0CEF7D53-FA64-11D1-A203-0000F81FEDEE}, 3 (PIDVSI_FileDescription)

    //  This is a user-friendly description of the file.
    PKEY_FileDescription: TPROPERTYKEY = (fmtid: '{0CEF7D53-FA64-11D1-A203-0000F81FEDEE}'; pid: 3);

    //  Name:     System.FileExtension -- PKEY_FileExtension
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {E4F10A3C-49E6-405D-8288-A23BD4EEAA6C}, 100

    //  This is the file extension of the file based item, including the leading period.

    //  If System.FileName is VT_EMPTY, then this property should be too.  Otherwise, it should be derived
    //  appropriately by the data source from System.FileName.  If System.FileName does not have a file
    //  extension, this value should be VT_EMPTY.

    //  To obtain the type of any item (including an item that is not a file), use System.ItemType.

    //  Example values:

    //      If the path is...                     The property value is...
    //      -----------------                     ------------------------
    //      "c:\folder\subfolder\hello.txt"       ".txt"
    //      "\\server\share\mydir\goodnews.doc"   ".doc"
    //      "\\server\share\numbers.xls"          ".xls"
    //      "\\server\share\folder"               VT_EMPTY
    //      "c:\folder\MyFolder"                  VT_EMPTY
    //      [desktop]                             VT_EMPTY
    PKEY_FileExtension: TPROPERTYKEY = (fmtid: '{E4F10A3C-49E6-405D-8288-A23BD4EEAA6C}'; pid: 100);

    //  Name:     System.FileFRN -- PKEY_FileFRN
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 21 (PID_STG_FRN)

    //  This is the unique file ID, also known as the File Reference Number. For a given file, this is the same value
    //  as is found in the structure variable FILE_ID_BOTH_DIR_INFO.FileId, via GetFileInformationByHandleEx().
    PKEY_FileFRN: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 21);

    //  Name:     System.FileName -- PKEY_FileName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {41CF5AE0-F75A-4806-BD87-59C7D9248EB9}, 100

    //  This is the file name (including extension) of the file.

    //  It is possible that the item might not exist on a filesystem (ie, it may not be opened
    //  using CreateFile).  Nonetheless, if the item is represented as a file from the logical sense
    //  (and its name follows standard Win32 file-naming syntax), then the data source should emit this property.

    //  If an item is not a file, then the value for this property is VT_EMPTY.  See
    //  System.ItemNameDisplay.

    //  This has the same value as System.ParsingName for items that are provided by the Shell's file folder.

    //  Example values:

    //      If the path is...                     The property value is...
    //      -----------------                     ------------------------
    //      "c:\folder\subfolder\hello.txt"       "hello.txt"
    //      "\\server\share\mydir\goodnews.doc"   "goodnews.doc"
    //      "\\server\share\numbers.xls"          "numbers.xls"
    //      "c:\folder\MyFolder"                  "MyFolder"
    //      (email message)                       VT_EMPTY
    //      (song on portable device)             "song.wma"
    PKEY_FileName: TPROPERTYKEY = (fmtid: '{41CF5AE0-F75A-4806-BD87-59C7D9248EB9}'; pid: 100);

    //  Name:     System.FileOfflineAvailabilityStatus -- PKEY_FileOfflineAvailabilityStatus
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 100

    //  Null (VT_EMPTY) indicates the normal case (file is available offline).
    //  The partial case is only for folders where some content may be available offline and some
    //  may not. The Complete cases are for folders only, where everything inside is present
    //  and/or pinned
    PKEY_FileOfflineAvailabilityStatus: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 100);

    // Possible discrete values for PKEY_FileOfflineAvailabilityStatus are:
    FILEOFFLINEAVAILABILITYSTATUS_NOTAVAILABLEOFFLINE = 0;
    FILEOFFLINEAVAILABILITYSTATUS_PARTIAL = 1;
    FILEOFFLINEAVAILABILITYSTATUS_COMPLETE = 2;
    FILEOFFLINEAVAILABILITYSTATUS_COMPLETE_PINNED = 3;
    FILEOFFLINEAVAILABILITYSTATUS_EXCLUDED = 4;
    FILEOFFLINEAVAILABILITYSTATUS_FOLDER_EMPTY = 5;

    //  Name:     System.FileOwner -- PKEY_FileOwner
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_Misc) {9B174B34-40FF-11D2-A27E-00C04FC30871}, 4 (PID_MISC_OWNER)

    //  This is the owner of the file, according to the file system.
    PKEY_FileOwner: TPROPERTYKEY = (fmtid: '{9B174B34-40FF-11D2-A27E-00C04FC30871}'; pid: 4);

    //  Name:     System.FilePlaceholderStatus -- PKEY_FilePlaceholderStatus
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}, 2

    //  Contains the placeholder file's status flags.
    PKEY_FilePlaceholderStatus: TPROPERTYKEY = (fmtid: '{B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}'; pid: 2);

    //  Name:     System.FileVersion -- PKEY_FileVersion
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSFMTID_VERSION) {0CEF7D53-FA64-11D1-A203-0000F81FEDEE}, 4 (PIDVSI_FileVersion)


    PKEY_FileVersion: TPROPERTYKEY = (fmtid: '{0CEF7D53-FA64-11D1-A203-0000F81FEDEE}'; pid: 4);

    //  Name:     System.FindData -- PKEY_FindData
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 0 (PID_FINDDATA)

    //  WIN32_FIND_DATAW in buffer of bytes.
    PKEY_FindData: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 0);

    //  Name:     System.FlagColor -- PKEY_FlagColor
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {67DF94DE-0CA7-4D6F-B792-053A3E4F03CF}, 100


    PKEY_FlagColor: TPROPERTYKEY = (fmtid: '{67DF94DE-0CA7-4D6F-B792-053A3E4F03CF}'; pid: 100);

    // Possible discrete values for PKEY_FlagColor are:
    FLAGCOLOR_PURPLE = 1;
    FLAGCOLOR_ORANGE = 2;
    FLAGCOLOR_GREEN = 3;
    FLAGCOLOR_YELLOW = 4;
    FLAGCOLOR_BLUE = 5;
    FLAGCOLOR_RED = 6;

    //  Name:     System.FlagColorText -- PKEY_FlagColorText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {45EAE747-8E2A-40AE-8CBF-CA52ABA6152A}, 100

    //  This is the user-friendly form of System.FlagColor.  Not intended to be parsed
    //  programmatically.
    PKEY_FlagColorText: TPROPERTYKEY = (fmtid: '{45EAE747-8E2A-40AE-8CBF-CA52ABA6152A}'; pid: 100);

    //  Name:     System.FlagStatus -- PKEY_FlagStatus
    //  Type:     Int32 -- VT_I4
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 12

    //  Status of Flag.  Values: (0=none 1=white 2=Red).  cdoPR_FLAG_STATUS
    PKEY_FlagStatus: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 12);

    // Possible discrete values for PKEY_FlagStatus are:
    FLAGSTATUS_NOTFLAGGED = 0;
    FLAGSTATUS_COMPLETED = 1;
    FLAGSTATUS_FOLLOWUP = 2;

    //  Name:     System.FlagStatusText -- PKEY_FlagStatusText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {DC54FD2E-189D-4871-AA01-08C2F57A4ABC}, 100

    //  This is the user-friendly form of System.FlagStatus.  Not intended to be parsed
    //  programmatically.
    PKEY_FlagStatusText: TPROPERTYKEY = (fmtid: '{DC54FD2E-189D-4871-AA01-08C2F57A4ABC}'; pid: 100);

    //  Name:     System.FolderKind -- PKEY_FolderKind
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 101

    //  This property represents the types of content stored in this folder specified by the storage provider.
    //  Each folder type must be one of the known value specified by System.Kind definition
    //  System.FolderKind is a readonly property, it should only be updated by the storage provider.
    PKEY_FolderKind: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 101);

    //  Name:     System.FolderNameDisplay -- PKEY_FolderNameDisplay
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 25

    //  This property is similar to System.ItemNameDisplay except it is only set for folders, for files it will be empty.
    //  This is useful to segregate files and folders by using this as the first sort key. When
    //  System.ItemDate is used as a second sort key it produces results with folders first ordered by name, then
    //  files ordered by date.
    PKEY_FolderNameDisplay: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 25);

    //  Name:     System.FreeSpace -- PKEY_FreeSpace
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: (FMTID_Volume) {9B174B35-40FF-11D2-A27E-00C04FC30871}, 2 (PID_VOLUME_FREE)  (Filesystem Volume Properties)

    //  The amount of free space in bytes.
    PKEY_FreeSpace: TPROPERTYKEY = (fmtid: '{9B174B35-40FF-11D2-A27E-00C04FC30871}'; pid: 2);

    //  Name:     System.FullText -- PKEY_FullText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {1E3EE840-BC2B-476C-8237-2ACD1A839B22}, 6

    //  This PKEY is used to specify search terms that should be applied as broadly as possible,
    //  across all valid properties for the data source(s) being searched.  It should not be
    //  emitted from a data source.
    PKEY_FullText: TPROPERTYKEY = (fmtid: '{1E3EE840-BC2B-476C-8237-2ACD1A839B22}'; pid: 6);

    //  Name:     System.HighKeywords -- PKEY_HighKeywords
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 24

    //  The high confidence keywords for the item.
    PKEY_HighKeywords: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 24);

    //  Name:     System.Identity -- PKEY_Identity
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A26F4AFC-7346-4299-BE47-EB1AE613139F}, 100
    PKEY_Identity: TPROPERTYKEY = (fmtid: '{A26F4AFC-7346-4299-BE47-EB1AE613139F}'; pid: 100);

    //  Name:     System.Identity.Blob -- PKEY_Identity_Blob
    //  Type:     Blob -- VT_BLOB
    //  FormatID: {8C3B93A4-BAED-1A83-9A32-102EE313F6EB}, 100

    //  Blob used to import/export identities
    PKEY_Identity_Blob: TPROPERTYKEY = (fmtid: '{8C3B93A4-BAED-1A83-9A32-102EE313F6EB}'; pid: 100);

    //  Name:     System.Identity.DisplayName -- PKEY_Identity_DisplayName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {7D683FC9-D155-45A8-BB1F-89D19BCB792F}, 100

    //  Display Name
    PKEY_Identity_DisplayName: TPROPERTYKEY = (fmtid: '{7D683FC9-D155-45A8-BB1F-89D19BCB792F}'; pid: 100);

    //  Name:     System.Identity.InternetSid -- PKEY_Identity_InternetSid
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {6D6D5D49-265D-4688-9F4E-1FDD33E7CC83}, 100

    //  Internet SID of an identity
    PKEY_Identity_InternetSid: TPROPERTYKEY = (fmtid: '{6D6D5D49-265D-4688-9F4E-1FDD33E7CC83}'; pid: 100);

    //  Name:     System.Identity.IsMeIdentity -- PKEY_Identity_IsMeIdentity
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {A4108708-09DF-4377-9DFC-6D99986D5A67}, 100

    //  Is it Me Identity
    PKEY_Identity_IsMeIdentity: TPROPERTYKEY = (fmtid: '{A4108708-09DF-4377-9DFC-6D99986D5A67}'; pid: 100);

    //  Name:     System.Identity.KeyProviderContext -- PKEY_Identity_KeyProviderContext
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A26F4AFC-7346-4299-BE47-EB1AE613139F}, 17

    //  Identity key provider context
    PKEY_Identity_KeyProviderContext: TPROPERTYKEY = (fmtid: '{A26F4AFC-7346-4299-BE47-EB1AE613139F}'; pid: 17);

    //  Name:     System.Identity.KeyProviderName -- PKEY_Identity_KeyProviderName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A26F4AFC-7346-4299-BE47-EB1AE613139F}, 16

    //  Identity key provider name
    PKEY_Identity_KeyProviderName: TPROPERTYKEY = (fmtid: '{A26F4AFC-7346-4299-BE47-EB1AE613139F}'; pid: 16);

    //  Name:     System.Identity.LogonStatusString -- PKEY_Identity_LogonStatusString
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {F18DEDF3-337F-42C0-9E03-CEE08708A8C3}, 100

    //  Identity User Logon Status String
    PKEY_Identity_LogonStatusString: TPROPERTYKEY = (fmtid: '{F18DEDF3-337F-42C0-9E03-CEE08708A8C3}'; pid: 100);

    //  Name:     System.Identity.PrimaryEmailAddress -- PKEY_Identity_PrimaryEmailAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FCC16823-BAED-4F24-9B32-A0982117F7FA}, 100

    //  Primary Email Address
    PKEY_Identity_PrimaryEmailAddress: TPROPERTYKEY = (fmtid: '{FCC16823-BAED-4F24-9B32-A0982117F7FA}'; pid: 100);

    //  Name:     System.Identity.PrimarySid -- PKEY_Identity_PrimarySid
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {2B1B801E-C0C1-4987-9EC5-72FA89814787}, 100

    //  Primary SID of an identity
    PKEY_Identity_PrimarySid: TPROPERTYKEY = (fmtid: '{2B1B801E-C0C1-4987-9EC5-72FA89814787}'; pid: 100);

    //  Name:     System.Identity.ProviderData -- PKEY_Identity_ProviderData
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A8A74B92-361B-4E9A-B722-7C4A7330A312}, 100

    //  Provider custom data of an identity
    PKEY_Identity_ProviderData: TPROPERTYKEY = (fmtid: '{A8A74B92-361B-4E9A-B722-7C4A7330A312}'; pid: 100);

    //  Name:     System.Identity.ProviderID -- PKEY_Identity_ProviderID
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {74A7DE49-FA11-4D3D-A006-DB7E08675916}, 100

    //  Provider ID
    PKEY_Identity_ProviderID: TPROPERTYKEY = (fmtid: '{74A7DE49-FA11-4D3D-A006-DB7E08675916}'; pid: 100);

    //  Name:     System.Identity.QualifiedUserName -- PKEY_Identity_QualifiedUserName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {DA520E51-F4E9-4739-AC82-02E0A95C9030}, 100

    //  Identity Qualified User Name
    PKEY_Identity_QualifiedUserName: TPROPERTYKEY = (fmtid: '{DA520E51-F4E9-4739-AC82-02E0A95C9030}'; pid: 100);

    //  Name:     System.Identity.UniqueID -- PKEY_Identity_UniqueID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {E55FC3B0-2B60-4220-918E-B21E8BF16016}, 100

    //  Unique ID
    PKEY_Identity_UniqueID: TPROPERTYKEY = (fmtid: '{E55FC3B0-2B60-4220-918E-B21E8BF16016}'; pid: 100);

    //  Name:     System.Identity.UserName -- PKEY_Identity_UserName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C4322503-78CA-49C6-9ACC-A68E2AFD7B6B}, 100

    //  Identity User Name
    PKEY_Identity_UserName: TPROPERTYKEY = (fmtid: '{C4322503-78CA-49C6-9ACC-A68E2AFD7B6B}'; pid: 100);

    //  Name:     System.IdentityProvider.Name -- PKEY_IdentityProvider_Name
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {B96EFF7B-35CA-4A35-8607-29E3A54C46EA}, 100

    //  Identity Provider Name
    PKEY_IdentityProvider_Name: TPROPERTYKEY = (fmtid: '{B96EFF7B-35CA-4A35-8607-29E3A54C46EA}'; pid: 100);

    //  Name:     System.IdentityProvider.Picture -- PKEY_IdentityProvider_Picture
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {2425166F-5642-4864-992F-98FD98F294C3}, 100

    //  Picture for the Identity Provider
    PKEY_IdentityProvider_Picture: TPROPERTYKEY = (fmtid: '{2425166F-5642-4864-992F-98FD98F294C3}'; pid: 100);

    //  Name:     System.ImageParsingName -- PKEY_ImageParsingName
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {D7750EE0-C6A4-48EC-B53E-B87B52E6D073}, 100
    PKEY_ImageParsingName: TPROPERTYKEY = (fmtid: '{D7750EE0-C6A4-48EC-B53E-B87B52E6D073}'; pid: 100);

    //  Name:     System.Importance -- PKEY_Importance
    //  Type:     Int32 -- VT_I4
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 11
    PKEY_Importance: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 11);

    // Possible range of values for PKEY_Importance are:
    IMPORTANCE_LOW_MIN = 0;
    IMPORTANCE_LOW_SET = 1;
    IMPORTANCE_LOW_MAX = 1;

    IMPORTANCE_NORMAL_MIN = 2;
    IMPORTANCE_NORMAL_SET = 3;
    IMPORTANCE_NORMAL_MAX = 4;

    IMPORTANCE_HIGH_MIN = 5;
    IMPORTANCE_HIGH_SET = 5;
    IMPORTANCE_HIGH_MAX = 5;


    //  Name:     System.ImportanceText -- PKEY_ImportanceText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A3B29791-7713-4E1D-BB40-17DB85F01831}, 100

    //  This is the user-friendly form of System.Importance.  Not intended to be parsed
    //  programmatically.
    PKEY_ImportanceText: TPROPERTYKEY = (fmtid: '{A3B29791-7713-4E1D-BB40-17DB85F01831}'; pid: 100);

    //  Name:     System.IsAttachment -- PKEY_IsAttachment
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {F23F425C-71A1-4FA8-922F-678EA4A60408}, 100

    //  Identifies if this item is an attachment.
    PKEY_IsAttachment: TPROPERTYKEY = (fmtid: '{F23F425C-71A1-4FA8-922F-678EA4A60408}'; pid: 100);

    //  Name:     System.IsDefaultNonOwnerSaveLocation -- PKEY_IsDefaultNonOwnerSaveLocation
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}, 5

    //  Identifies the default save location for a library for non-owners of the library
    PKEY_IsDefaultNonOwnerSaveLocation: TPROPERTYKEY = (fmtid: '{5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}'; pid: 5);

    //  Name:     System.IsDefaultSaveLocation -- PKEY_IsDefaultSaveLocation
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}, 3

    //  Identifies the default save location for a library for the owner of the library
    PKEY_IsDefaultSaveLocation: TPROPERTYKEY = (fmtid: '{5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}'; pid: 3);

    //  Name:     System.IsDeleted -- PKEY_IsDeleted
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5CDA5FC8-33EE-4FF3-9094-AE7BD8868C4D}, 100
    PKEY_IsDeleted: TPROPERTYKEY = (fmtid: '{5CDA5FC8-33EE-4FF3-9094-AE7BD8868C4D}'; pid: 100);

    //  Name:     System.IsEncrypted -- PKEY_IsEncrypted
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {90E5E14E-648B-4826-B2AA-ACAF790E3513}, 10

    //  Is the item encrypted?
    PKEY_IsEncrypted: TPROPERTYKEY = (fmtid: '{90E5E14E-648B-4826-B2AA-ACAF790E3513}'; pid: 10);

    //  Name:     System.IsFlagged -- PKEY_IsFlagged
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5DA84765-E3FF-4278-86B0-A27967FBDD03}, 100
    PKEY_IsFlagged: TPROPERTYKEY = (fmtid: '{5DA84765-E3FF-4278-86B0-A27967FBDD03}'; pid: 100);

    //  Name:     System.IsFlaggedComplete -- PKEY_IsFlaggedComplete
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {A6F360D2-55F9-48DE-B909-620E090A647C}, 100
    PKEY_IsFlaggedComplete: TPROPERTYKEY = (fmtid: '{A6F360D2-55F9-48DE-B909-620E090A647C}'; pid: 100);

    //  Name:     System.IsIncomplete -- PKEY_IsIncomplete
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {346C8BD1-2E6A-4C45-89A4-61B78E8E700F}, 100

    //  Identifies if the message was not completely received for some error condition.
    PKEY_IsIncomplete: TPROPERTYKEY = (fmtid: '{346C8BD1-2E6A-4C45-89A4-61B78E8E700F}'; pid: 100);

    //  Name:     System.IsLocationSupported -- PKEY_IsLocationSupported
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}, 8

    //  A bool value to know if a location is supported (locally indexable, or remotely indexed).
    PKEY_IsLocationSupported: TPROPERTYKEY = (fmtid: '{5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}'; pid: 8);

    //  Name:     System.IsPinnedToNameSpaceTree -- PKEY_IsPinnedToNameSpaceTree
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}, 2

    //  A bool value to know if a shell folder is pinned to the navigation pane
    PKEY_IsPinnedToNameSpaceTree: TPROPERTYKEY = (fmtid: '{5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}'; pid: 2);

    //  Name:     System.IsRead -- PKEY_IsRead
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 10

    //  Has the item been read?
    PKEY_IsRead: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 10);

    //  Name:     System.IsSearchOnlyItem -- PKEY_IsSearchOnlyItem
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}, 4

    //  Identifies if a location or a library is search only
    PKEY_IsSearchOnlyItem: TPROPERTYKEY = (fmtid: '{5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}'; pid: 4);

    //  Name:     System.IsSendToTarget -- PKEY_IsSendToTarget
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 33

    //  Provided by certain shell folders. Return TRUE if the folder is a valid Send To target.
    PKEY_IsSendToTarget: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 33);

    //  Name:     System.IsShared -- PKEY_IsShared
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {EF884C5B-2BFE-41BB-AAE5-76EEDF4F9902}, 100

    //  Is this item shared?  This only checks for ACLs that are not inherited.
    PKEY_IsShared: TPROPERTYKEY = (fmtid: '{EF884C5B-2BFE-41BB-AAE5-76EEDF4F9902}'; pid: 100);

    //  Name:     System.ItemAuthors -- PKEY_ItemAuthors
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {D0A04F0A-462A-48A4-BB2F-3706E88DBD7D}, 100

    //  This is the generic list of authors associated with an item.

    //  For example, the artist name for a track is the item author.
    PKEY_ItemAuthors: TPROPERTYKEY = (fmtid: '{D0A04F0A-462A-48A4-BB2F-3706E88DBD7D}'; pid: 100);

    //  Name:     System.ItemClassType -- PKEY_ItemClassType
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {048658AD-2DB8-41A4-BBB6-AC1EF1207EB1}, 100
    PKEY_ItemClassType: TPROPERTYKEY = (fmtid: '{048658AD-2DB8-41A4-BBB6-AC1EF1207EB1}'; pid: 100);

    //  Name:     System.ItemDate -- PKEY_ItemDate
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {F7DB74B4-4287-4103-AFBA-F1B13DCD75CF}, 100

    //  This is the main date for an item. The date of interest.

    //  For example, for photos this maps to System.Photo.DateTaken.
    PKEY_ItemDate: TPROPERTYKEY = (fmtid: '{F7DB74B4-4287-4103-AFBA-F1B13DCD75CF}'; pid: 100);

    //  Name:     System.ItemFolderNameDisplay -- PKEY_ItemFolderNameDisplay
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 2 (PID_STG_DIRECTORY)

    //  This is the user-friendly display name of the parent folder of an item.

    //  If System.ItemFolderPathDisplay is VT_EMPTY, then this property should be too.  Otherwise, it
    //  should be derived appropriately by the data source from System.ItemFolderPathDisplay.

    //  If the folder is a file folder, the value will be localized if a localized name is available.

    //  Example values:

    //      If the path is...                     The property value is...
    //      -----------------                     ------------------------
    //      "c:\folder\subfolder\hello.txt"       "subfolder"
    //      "\\server\share\mydir\goodnews.doc"   "mydir"
    //      "\\server\share\numbers.xls"          "share"
    //      "c:\folder\MyFolder"                  "folder"
    //      "/Mailbox Account/Inbox/'Re: Hello!'" "Inbox"
    PKEY_ItemFolderNameDisplay: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 2);

    //  Name:     System.ItemFolderPathDisplay -- PKEY_ItemFolderPathDisplay
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 6

    //  This is the user-friendly display path of the parent folder of an item.

    //  If System.ItemPathDisplay is VT_EMPTY, then this property should be too.  Otherwise, it should
    //  be derived appropriately by the data source from System.ItemPathDisplay.

    //  Example values:

    //      If the path is...                     The property value is...
    //      -----------------                     ------------------------
    //      "c:\folder\subfolder\hello.txt"       "c:\folder\subfolder"
    //      "\\server\share\mydir\goodnews.doc"   "\\server\share\mydir"
    //      "\\server\share\numbers.xls"          "\\server\share"
    //      "c:\folder\MyFolder"                  "c:\folder"
    //      "/Mailbox Account/Inbox/'Re: Hello!'" "/Mailbox Account/Inbox"
    PKEY_ItemFolderPathDisplay: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 6);

    //  Name:     System.ItemFolderPathDisplayNarrow -- PKEY_ItemFolderPathDisplayNarrow
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {DABD30ED-0043-4789-A7F8-D013A4736622}, 100

    //  This is the user-friendly display path of the parent folder of an item.  The format of the string
    //  should be tailored such that the folder name comes first, to optimize for a narrow viewing column.

    //  If the folder is a file folder, the value includes localized names if they are present.

    //  If System.ItemFolderPathDisplay is VT_EMPTY, then this property should be too.  Otherwise, it should
    //  be derived appropriately by the data source from System.ItemFolderPathDisplay.

    //  Example values:

    //      If the path is...                     The property value is...
    //      -----------------                     ------------------------
    //      "c:\folder\subfolder\hello.txt"       "subfolder (c:\folder)"
    //      "\\server\share\mydir\goodnews.doc"   "mydir (\\server\share)"
    //      "\\server\share\numbers.xls"          "share (\\server)"
    //      "c:\folder\MyFolder"                  "folder (c:\)"
    //      "/Mailbox Account/Inbox/'Re: Hello!'" "Inbox (/Mailbox Account)"
    PKEY_ItemFolderPathDisplayNarrow: TPROPERTYKEY = (fmtid: '{DABD30ED-0043-4789-A7F8-D013A4736622}'; pid: 100);

    //  Name:     System.ItemName -- PKEY_ItemName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {6B8DA074-3B5C-43BC-886F-0A2CDCE00B6F}, 100

    //  This is the base-name of the System.ItemNameDisplay.

    //  If the item is a file this property
    //  includes the extension in all cases, and will be localized if a localized name is available.

    //  If the item is a message, then the value of this property does not include the forwarding or
    //  reply prefixes (see System.ItemNamePrefix).
    PKEY_ItemName: TPROPERTYKEY = (fmtid: '{6B8DA074-3B5C-43BC-886F-0A2CDCE00B6F}'; pid: 100);

    //  Name:     System.ItemNameDisplay -- PKEY_ItemNameDisplay
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 10 (PID_STG_NAME)

    //  This is the display name in "most complete" form.  This is the best effort unique representation
    //  of the name of an item that makes sense for end users to read.  It is the concatentation of
    //  System.ItemNamePrefix and System.ItemName.

    //  If the item is a file this property
    //  includes the extension in all cases, and will be localized if a localized name is available.

    //  There are acceptable cases when System.FileName is not VT_EMPTY, yet the value of this property
    //  is completely different.  Email messages are a key example.  If the item is an email message,
    //  the item name is likely the subject.  In that case, the value must be the concatenation of the
    //  System.ItemNamePrefix and System.ItemName.  Since the value of System.ItemNamePrefix excludes
    //  any trailing whitespace, the concatenation must include a whitespace when generating System.ItemNameDisplay.

    //  Note that this property is not guaranteed to be unique, but the idea is to promote the most likely
    //  candidate that can be unique and also makes sense for end users. For example, for documents, you
    //  might think about using System.Title as the System.ItemNameDisplay, but in practice the title of
    //  the documents may not be useful or unique enough to be of value as the sole System.ItemNameDisplay.
    //  Instead, providing the value of System.FileName as the value of System.ItemNameDisplay is a better
    //  candidate.  In Windows Mail, the emails are stored in the file system as .eml files and the
    //  System.FileName for those files are not human-friendly as they contain GUIDs. In this example,
    //  promoting System.Subject as System.ItemNameDisplay makes more sense.

    //  Compatibility notes:

    //  Shell folder implementations on Vista: use PKEY_ItemNameDisplay for the name column when
    //  you want Explorer to call ISF::GetDisplayNameOf(SHGDN_NORMAL) to get the value of the name. Use
    //  another PKEY (like PKEY_ItemName) when you want Explorer to call either the folder's property store or
    //  ISF2::GetDetailsEx in order to get the value of the name.

    //  Shell folder implementations on XP: the first column needs to be the name column, and Explorer
    //  will call ISF::GetDisplayNameOf to get the value of the name.  The PKEY/SCID does not matter.

    //  Example values:

    //      File:          "hello.txt"
    //      Message:       "Re: Let's talk about Tom's argyle socks!"
    //      Device folder: "song.wma"
    //      Folder:        "Documents"
    PKEY_ItemNameDisplay: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 10);

    //  Name:     System.ItemNameDisplayWithoutExtension -- PKEY_ItemNameDisplayWithoutExtension
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 24

    //  This is similar to System.ItemNameDisplay except that it never includes a file extension.
    PKEY_ItemNameDisplayWithoutExtension: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 24);

    //  Name:     System.ItemNamePrefix -- PKEY_ItemNamePrefix
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {D7313FF1-A77A-401C-8C99-3DBDD68ADD36}, 100

    //  This is the prefix of an item, used for email messages.
    //  where the subject begins with "Re:" which is the prefix.

    //  If the item is a file, then the value of this property is VT_EMPTY.

    //  If the item is a message, then the value of this property is the forwarding or reply
    //  prefixes (including delimiting colon, but no whitespace), or VT_EMPTY if there is no prefix.

    //  Example values:

    //  System.ItemNamePrefix    System.ItemName      System.ItemNameDisplay
    //  ---------------------    -------------------  ----------------------
    //  VT_EMPTY                 "Great day"          "Great day"
    //  "Re:"                    "Great day"          "Re: Great day"
    //  "Fwd: "                  "Monthly budget"     "Fwd: Monthly budget"
    //  VT_EMPTY                 "accounts.xls"       "accounts.xls"
    PKEY_ItemNamePrefix: TPROPERTYKEY = (fmtid: '{D7313FF1-A77A-401C-8C99-3DBDD68ADD36}'; pid: 100);

    //  Name:     System.ItemNameSortOverride -- PKEY_ItemNameSortOverride
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 23

    //  This string should be set to the phonetic version of the display name as defined in System.ItemNameDisplay in CJK locales
    //  (CHS Pinyin, JPN Hiragana, KOR Hangul, etc.). The first character of this field is also used for grouping names by first
    //  letter. For most non-CJK languages, this field does not need to be set (in which case System.ItemNameDisplay will be used).
    //  However, if it is desirable to override the grouping letter (for example, to remove leading articles such as "a" and "the"),
    //  an alternate string can be provided here.
    PKEY_ItemNameSortOverride: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 23);

    //  Name:     System.ItemParticipants -- PKEY_ItemParticipants
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {D4D0AA16-9948-41A4-AA85-D97FF9646993}, 100

    //  This is the generic list of people associated with an item and who contributed
    //  to the item.

    //  For example, this is the combination of people in the To list, Cc list and
    //  sender of an email message.
    PKEY_ItemParticipants: TPROPERTYKEY = (fmtid: '{D4D0AA16-9948-41A4-AA85-D97FF9646993}'; pid: 100);

    //  Name:     System.ItemPathDisplay -- PKEY_ItemPathDisplay
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 7

    //  This is the user-friendly display path to the item.

    //  If the item is a file or folder this property
    //  includes the extension in all cases, and will be localized if a localized name is available.

    //  For other items,this is the user-friendly equivalent, assuming the item exists in hierarchical storage.

    //  Unlike System.ItemUrl, this property value does not include the URL scheme.

    //  To parse an item path, use System.ItemUrl or System.ParsingPath.  To reference shell
    //  namespace items using shell APIs, use System.ParsingPath.

    //  Example values:

    //      If the path is...                     The property value is...
    //      -----------------                     ------------------------
    //      "c:\folder\subfolder\hello.txt"       "c:\folder\subfolder\hello.txt"
    //      "\\server\share\mydir\goodnews.doc"   "\\server\share\mydir\goodnews.doc"
    //      "\\server\share\numbers.xls"          "\\server\share\numbers.xls"
    //      "c:\folder\MyFolder"                  "c:\folder\MyFolder"
    //      "/Mailbox Account/Inbox/'Re: Hello!'" "/Mailbox Account/Inbox/'Re: Hello!'"
    PKEY_ItemPathDisplay: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 7);

    //  Name:     System.ItemPathDisplayNarrow -- PKEY_ItemPathDisplayNarrow
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 8

    //  This is the user-friendly display path to the item. The format of the string should be
    //  tailored such that the name comes first, to optimize for a narrow viewing column.

    //  If the item is a file, the value excludes the file extension, and includes localized names if they are present.
    //  If the item is a message, the value includes the System.ItemNamePrefix.

    //  To parse an item path, use System.ItemUrl or System.ParsingPath.

    //  Example values:

    //      If the path is...                     The property value is...
    //      -----------------                     ------------------------
    //      "c:\folder\subfolder\hello.txt"       "hello (c:\folder\subfolder)"
    //      "\\server\share\mydir\goodnews.doc"   "goodnews (\\server\share\mydir)"
    //      "\\server\share\folder"               "folder (\\server\share)"
    //      "c:\folder\MyFolder"                  "MyFolder (c:\folder)"
    //      "/Mailbox Account/Inbox/'Re: Hello!'" "Re: Hello! (/Mailbox Account/Inbox)"
    PKEY_ItemPathDisplayNarrow: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 8);

    //  Name:     System.ItemSubType -- PKEY_ItemSubType
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 37

    //  Describes the sub-type of an item. The value is intended for display to the user.

    //  In contrast to System.ItemType, which is generally used to describe a class of items
    //  that all have the same common content format, System.ItemSubType may differ based on
    //  the individual contents or purpose of the item.

    //  For example, this property may be used to identify an item with System.ItemType = "jpg"
    //  as System.ItemSubType = "Panorama" or System.ItemSubType = "Smart Shot".
    PKEY_ItemSubType: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 37);

    //  Name:     System.ItemType -- PKEY_ItemType
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 11

    //  This is the canonical type of the item and is intended to be programmatically
    //  parsed.

    //  If there is no canonical type, the value is VT_EMPTY.

    //  If the item is a file (ie, System.FileName is not VT_EMPTY), the value is the same as
    //  System.FileExtension.

    //  Use System.ItemTypeText when you want to display the type to end users in a view.  (If
    //   the item is a file, passing the System.ItemType value to PSFormatForDisplay will
    //   result in the same value as System.ItemTypeText.)

    //  Example values:

    //      If the path is...                     The property value is...
    //      -----------------                     ------------------------
    //      "c:\folder\subfolder\hello.txt"       ".txt"
    //      "\\server\share\mydir\goodnews.doc"   ".doc"
    //      "\\server\share\folder"               "Directory"
    //      "c:\folder\MyFolder"                  "Directory"
    //      [desktop]                             "Folder"
    //      "/Mailbox Account/Inbox/'Re: Hello!'" "MAPI/IPM.Message"
    PKEY_ItemType: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 11);

    //  Name:     System.ItemTypeText -- PKEY_ItemTypeText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 4 (PID_STG_STORAGETYPE)

    //  This is the user friendly type name of the item.  This is not intended to be
    //  programmatically parsed.

    //  If System.ItemType is VT_EMPTY, the value of this property is also VT_EMPTY.

    //  If the item is a file, the value of this property is the same as if you passed the
    //  file's System.ItemType value to PSFormatForDisplay.

    //  This property should not be confused with System.Kind, where System.Kind is a high-level
    //  user friendly kind name. For example, for a document, System.Kind = "Document" and
    //  System.Item.Type = ".doc" and System.Item.TypeText = "Microsoft Word Document"

    //  Example values:

    //      If the path is...                     The property value is...
    //      -----------------                     ------------------------
    //      "c:\folder\subfolder\hello.txt"       "Text File"
    //      "\\server\share\mydir\goodnews.doc"   "Microsoft Word Document"
    //      "\\server\share\folder"               "File Folder"
    //      "c:\folder\MyFolder"                  "File Folder"
    //      "/Mailbox Account/Inbox/'Re: Hello!'" "Outlook E-Mail Message"
    PKEY_ItemTypeText: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 4);

    //  Name:     System.ItemUrl -- PKEY_ItemUrl
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_Query) {49691C90-7E17-101A-A91C-08002B2ECDA9}, 9 (DISPID_QUERY_VIRTUALPATH)

    //  This always represents a well formed URL that points to the item.

    //  To reference shell namespace items using shell APIs, use System.ParsingPath.

    //  Example values:

    //      Files:    "file:///c:/folder/subfolder/hello.txt"
    //                "csc://{GUID}/..."
    //      Messages: "mapi://..."
    PKEY_ItemUrl: TPROPERTYKEY = (fmtid: '{49691C90-7E17-101A-A91C-08002B2ECDA9}'; pid: 9);

    //  Name:     System.Keywords -- PKEY_Keywords
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)  Legacy code may treat this as VT_LPSTR.
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 5 (PIDSI_KEYWORDS)

    //  The keywords for the item.  Also referred to as tags.
    PKEY_Keywords: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 5);

    //  Name:     System.Kind -- PKEY_Kind
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {1E3EE840-BC2B-476C-8237-2ACD1A839B22}, 3

    //  System.Kind is used to map extensions to various .Search folders.
    //  Extensions are mapped to Kinds at HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Explorer\KindMap
    //  The list of kinds is not extensible.
    PKEY_Kind: TPROPERTYKEY = (fmtid: '{1E3EE840-BC2B-476C-8237-2ACD1A839B22}'; pid: 3);

    // Possible discrete values for PKEY_Kind are:
    KIND_CALENDAR = WideString('calendar');
    KIND_COMMUNICATION = WideString('communication');
    KIND_CONTACT = WideString('contact');
    KIND_DOCUMENT = WideString('document');
    KIND_EMAIL = WideString('email');
    KIND_FEED = WideString('feed');
    KIND_FOLDER = WideString('folder');
    KIND_GAME = WideString('game');
    KIND_INSTANTMESSAGE = WideString('instantmessage');
    KIND_JOURNAL = WideString('journal');
    KIND_LINK = WideString('link');
    KIND_MOVIE = WideString('movie');
    KIND_MUSIC = WideString('music');
    KIND_NOTE = WideString('note');
    KIND_PICTURE = WideString('picture');
    KIND_PLAYLIST = WideString('playlist');
    KIND_PROGRAM = WideString('program');
    KIND_RECORDEDTV = WideString('recordedtv');
    KIND_SEARCHFOLDER = WideString('searchfolder');
    KIND_TASK = WideString('task');
    KIND_VIDEO = WideString('video');
    KIND_WEBHISTORY = WideString('webhistory');
    KIND_UNKNOWN = WideString('unknown');

    //  Name:     System.KindText -- PKEY_KindText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {F04BEF95-C585-4197-A2B7-DF46FDC9EE6D}, 100

    //  This is the user-friendly form of System.Kind.  Not intended to be parsed
    //  programmatically.
    PKEY_KindText: TPROPERTYKEY = (fmtid: '{F04BEF95-C585-4197-A2B7-DF46FDC9EE6D}'; pid: 100);

    //  Name:     System.Language -- PKEY_Language
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 28


    PKEY_Language: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 28);

    //  Name:     System.LastSyncError -- PKEY_LastSyncError
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 107
    PKEY_LastSyncError: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 107);

    //  Name:     System.LastSyncWarning -- PKEY_LastSyncWarning
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 128
    PKEY_LastSyncWarning: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 128);

    //  Name:     System.LastWriterPackageFamilyName -- PKEY_LastWriterPackageFamilyName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {502CFEAB-47EB-459C-B960-E6D8728F7701}, 101

    //  Mark of the app container. The package family name of the last app to edit the file's contents.
    PKEY_LastWriterPackageFamilyName: TPROPERTYKEY = (fmtid: '{502CFEAB-47EB-459C-B960-E6D8728F7701}'; pid: 101);

    //  Name:     System.LowKeywords -- PKEY_LowKeywords
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 25

    //  The low confidence keywords for the item.
    PKEY_LowKeywords: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 25);

    //  Name:     System.MediumKeywords -- PKEY_MediumKeywords
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 26

    //  The medium confidence keywords for the item.
    PKEY_MediumKeywords: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 26);

    //  Name:     System.MileageInformation -- PKEY_MileageInformation
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FDF84370-031A-4ADD-9E91-0D775F1C6605}, 100
    PKEY_MileageInformation: TPROPERTYKEY = (fmtid: '{FDF84370-031A-4ADD-9E91-0D775F1C6605}'; pid: 100);

    //  Name:     System.MIMEType -- PKEY_MIMEType
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {0B63E350-9CCC-11D0-BCDB-00805FCCCE04}, 5

    //  The MIME type.  Eg, for EML files: 'message/rfc822'.
    PKEY_MIMEType: TPROPERTYKEY = (fmtid: '{0B63E350-9CCC-11D0-BCDB-00805FCCCE04}'; pid: 5);

    //  Name:     System.Null -- PKEY_Null
    //  Type:     Null -- VT_NULL
    //  FormatID: {00000000-0000-0000-0000-000000000000}, 0
    PKEY_Null: TPROPERTYKEY = (fmtid: '{00000000-0000-0000-0000-000000000000}'; pid: 0);

    //  Name:     System.OfflineAvailability -- PKEY_OfflineAvailability
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {A94688B6-7D9F-4570-A648-E3DFC0AB2B3F}, 100
    PKEY_OfflineAvailability: TPROPERTYKEY = (fmtid: '{A94688B6-7D9F-4570-A648-E3DFC0AB2B3F}'; pid: 100);

    // Possible discrete values for PKEY_OfflineAvailability are:
    OFFLINEAVAILABILITY_NOT_AVAILABLE = 0;
    OFFLINEAVAILABILITY_AVAILABLE = 1;
    OFFLINEAVAILABILITY_ALWAYS_AVAILABLE = 2;

    //  Name:     System.OfflineStatus -- PKEY_OfflineStatus
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {6D24888F-4718-4BDA-AFED-EA0FB4386CD8}, 100
    PKEY_OfflineStatus: TPROPERTYKEY = (fmtid: '{6D24888F-4718-4BDA-AFED-EA0FB4386CD8}'; pid: 100);

    // Possible discrete values for PKEY_OfflineStatus are:
    OFFLINESTATUS_ONLINE = 0;
    OFFLINESTATUS_OFFLINE = 1;
    OFFLINESTATUS_OFFLINE_FORCED = 2;
    OFFLINESTATUS_OFFLINE_SLOW = 3;
    OFFLINESTATUS_OFFLINE_ERROR = 4;
    OFFLINESTATUS_OFFLINE_ITEM_VERSION_CONFLICT = 5;
    OFFLINESTATUS_OFFLINE_SUSPENDED = 6;

    //  Name:     System.OriginalFileName -- PKEY_OriginalFileName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSFMTID_VERSION) {0CEF7D53-FA64-11D1-A203-0000F81FEDEE}, 6


    PKEY_OriginalFileName: TPROPERTYKEY = (fmtid: '{0CEF7D53-FA64-11D1-A203-0000F81FEDEE}'; pid: 6);

    //  Name:     System.OwnerSID -- PKEY_OwnerSID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}, 6

    //  SID of the user that owns the library.
    PKEY_OwnerSID: TPROPERTYKEY = (fmtid: '{5D76B67F-9B3D-44BB-B6AE-25DA4F638A67}'; pid: 6);

    //  Name:     System.ParentalRating -- PKEY_ParentalRating
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 21 (PIDMSI_PARENTAL_RATING)


    PKEY_ParentalRating: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 21);

    //  Name:     System.ParentalRatingReason -- PKEY_ParentalRatingReason
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {10984E0A-F9F2-4321-B7EF-BAF195AF4319}, 100
    PKEY_ParentalRatingReason: TPROPERTYKEY = (fmtid: '{10984E0A-F9F2-4321-B7EF-BAF195AF4319}'; pid: 100);

    //  Name:     System.ParentalRatingsOrganization -- PKEY_ParentalRatingsOrganization
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A7FE0840-1344-46F0-8D37-52ED712A4BF9}, 100
    PKEY_ParentalRatingsOrganization: TPROPERTYKEY = (fmtid: '{A7FE0840-1344-46F0-8D37-52ED712A4BF9}'; pid: 100);

    //  Name:     System.ParsingBindContext -- PKEY_ParsingBindContext
    //  Type:     Any -- VT_NULL  Legacy code may treat this as VT_UNKNOWN.
    //  FormatID: {DFB9A04D-362F-4CA3-B30B-0254B17B5B84}, 100

    //  used to get the IBindCtx for an item for parsing
    PKEY_ParsingBindContext: TPROPERTYKEY = (fmtid: '{DFB9A04D-362F-4CA3-B30B-0254B17B5B84}'; pid: 100);

    //  Name:     System.ParsingName -- PKEY_ParsingName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 24

    //  The shell namespace name of an item relative to a parent folder.  This name may be passed to
    //  IShellFolder::ParseDisplayName() of the parent shell folder.
    PKEY_ParsingName: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 24);

    //  Name:     System.ParsingPath -- PKEY_ParsingPath
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 30

    //  This is the shell namespace path to the item.  This path may be passed to
    //  SHParseDisplayName to parse the path to the correct shell folder.

    //  If the item cannot be accessed through the shell namespace, this value is VT_EMPTY.
    PKEY_ParsingPath: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 30);

    //  Name:     System.PerceivedType -- PKEY_PerceivedType
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 9

    //  The perceived type of a shell item, based upon its canonical type.
    PKEY_PerceivedType: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 9);

    // For the enumerated values of PKEY_PerceivedType, see the PERCEIVED_TYPE_* values in shtypes.idl.

    //  Name:     System.PercentFull -- PKEY_PercentFull
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_Volume) {9B174B35-40FF-11D2-A27E-00C04FC30871}, 5  (Filesystem Volume Properties)

    //  The amount filled as a percentage, multiplied by 100 (ie, the valid range is 0 through 100).
    PKEY_PercentFull: TPROPERTYKEY = (fmtid: '{9B174B35-40FF-11D2-A27E-00C04FC30871}'; pid: 5);

    //  Name:     System.Priority -- PKEY_Priority
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {9C1FCF74-2D97-41BA-B4AE-CB2E3661A6E4}, 5


    PKEY_Priority: TPROPERTYKEY = (fmtid: '{9C1FCF74-2D97-41BA-B4AE-CB2E3661A6E4}'; pid: 5);

    // Possible discrete values for PKEY_Priority are:
    PRIORITY_PROP_LOW = 0;
    PRIORITY_PROP_NORMAL = 1;
    PRIORITY_PROP_HIGH = 2;

    //  Name:     System.PriorityText -- PKEY_PriorityText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {D98BE98B-B86B-4095-BF52-9D23B2E0A752}, 100

    //  This is the user-friendly form of System.Priority.  Not intended to be parsed
    //  programmatically.
    PKEY_PriorityText: TPROPERTYKEY = (fmtid: '{D98BE98B-B86B-4095-BF52-9D23B2E0A752}'; pid: 100);

    //  Name:     System.Project -- PKEY_Project
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {39A7F922-477C-48DE-8BC8-B28441E342E3}, 100
    PKEY_Project: TPROPERTYKEY = (fmtid: '{39A7F922-477C-48DE-8BC8-B28441E342E3}'; pid: 100);

    //  Name:     System.ProviderItemID -- PKEY_ProviderItemID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {F21D9941-81F0-471A-ADEE-4E74B49217ED}, 100


    PKEY_ProviderItemID: TPROPERTYKEY = (fmtid: '{F21D9941-81F0-471A-ADEE-4E74B49217ED}'; pid: 100);

    //  Name:     System.Rating -- PKEY_Rating
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 9 (PIDMSI_RATING)

    //  Indicates the users preference rating of an item on a scale of 1-99 (1-12 = One Star,
    //  13-37 = Two Stars, 38-62 = Three Stars, 63-87 = Four Stars, 88-99 = Five Stars).
    PKEY_Rating: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 9);

    // Use the following constants to convert between visual stars and the ratings value:
    RATING_ONE_STAR_MIN = 1;
    RATING_ONE_STAR_SET = 1;
    RATING_ONE_STAR_MAX = 12;

    RATING_TWO_STARS_MIN = 13;
    RATING_TWO_STARS_SET = 25;
    RATING_TWO_STARS_MAX = 37;

    RATING_THREE_STARS_MIN = 38;
    RATING_THREE_STARS_SET = 50;
    RATING_THREE_STARS_MAX = 62;

    RATING_FOUR_STARS_MIN = 63;
    RATING_FOUR_STARS_SET = 75;
    RATING_FOUR_STARS_MAX = 87;

    RATING_FIVE_STARS_MIN = 88;
    RATING_FIVE_STARS_SET = 99;
    RATING_FIVE_STARS_MAX = 99;


    //  Name:     System.RatingText -- PKEY_RatingText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {90197CA7-FD8F-4E8C-9DA3-B57E1E609295}, 100

    //  This is the user-friendly form of System.Rating.  Not intended to be parsed
    //  programmatically.
    PKEY_RatingText: TPROPERTYKEY = (fmtid: '{90197CA7-FD8F-4E8C-9DA3-B57E1E609295}'; pid: 100);

    //  Name:     System.RemoteConflictingFile -- PKEY_RemoteConflictingFile
    //  Type:     Object -- VT_UNKNOWN
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 115
    PKEY_RemoteConflictingFile: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 115);

    //  Name:     System.Security.AllowedEnterpriseDataProtectionIdentities -- PKEY_Security_AllowedEnterpriseDataProtectionIdentities
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {38D43380-D418-4830-84D5-46935A81C5C6}, 32

    //  Encryption options
    PKEY_Security_AllowedEnterpriseDataProtectionIdentities: TPROPERTYKEY = (fmtid: '{38D43380-D418-4830-84D5-46935A81C5C6}'; pid: 32);

    //  Name:     System.Security.EncryptionOwners -- PKEY_Security_EncryptionOwners
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {5F5AFF6A-37E5-4780-97EA-80C7565CF535}, 34

    //  File ownership
    PKEY_Security_EncryptionOwners: TPROPERTYKEY = (fmtid: '{5F5AFF6A-37E5-4780-97EA-80C7565CF535}'; pid: 34);

    //  Name:     System.Security.EncryptionOwnersDisplay -- PKEY_Security_EncryptionOwnersDisplay
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {DE621B8F-E125-43A3-A32D-5665446D632A}, 25

    //  File ownership
    PKEY_Security_EncryptionOwnersDisplay: TPROPERTYKEY = (fmtid: '{DE621B8F-E125-43A3-A32D-5665446D632A}'; pid: 25);

    //  Name:     System.Sensitivity -- PKEY_Sensitivity
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {F8D3F6AC-4874-42CB-BE59-AB454B30716A}, 100


    PKEY_Sensitivity: TPROPERTYKEY = (fmtid: '{F8D3F6AC-4874-42CB-BE59-AB454B30716A}'; pid: 100);

    // Possible discrete values for PKEY_Sensitivity are:
    SENSITIVITY_PROP_NORMAL = 0;
    SENSITIVITY_PROP_PERSONAL = 1;
    SENSITIVITY_PROP_PRIVATE = 2;
    SENSITIVITY_PROP_CONFIDENTIAL = 3;

    //  Name:     System.SensitivityText -- PKEY_SensitivityText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {D0C7F054-3F72-4725-8527-129A577CB269}, 100

    //  This is the user-friendly form of System.Sensitivity.  Not intended to be parsed
    //  programmatically.
    PKEY_SensitivityText: TPROPERTYKEY = (fmtid: '{D0C7F054-3F72-4725-8527-129A577CB269}'; pid: 100);

    //  Name:     System.SFGAOFlags -- PKEY_SFGAOFlags
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 25

    //  IShellFolder::GetAttributesOf flags, with SFGAO_PKEYSFGAOMASK attributes masked out.
    PKEY_SFGAOFlags: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 25);

    //  Name:     System.SharedWith -- PKEY_SharedWith
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {EF884C5B-2BFE-41BB-AAE5-76EEDF4F9902}, 200

    //  Who is the item shared with?
    PKEY_SharedWith: TPROPERTYKEY = (fmtid: '{EF884C5B-2BFE-41BB-AAE5-76EEDF4F9902}'; pid: 200);

    //  Name:     System.ShareUserRating -- PKEY_ShareUserRating
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 12 (PIDMSI_SHARE_USER_RATING)


    PKEY_ShareUserRating: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 12);

    //  Name:     System.SharingStatus -- PKEY_SharingStatus
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {EF884C5B-2BFE-41BB-AAE5-76EEDF4F9902}, 300

    //  What is the item's sharing status (not shared, shared, everyone (homegroup or everyone), or private)?
    PKEY_SharingStatus: TPROPERTYKEY = (fmtid: '{EF884C5B-2BFE-41BB-AAE5-76EEDF4F9902}'; pid: 300);

    // Possible discrete values for PKEY_SharingStatus are:
    SHARINGSTATUS_NOTSHARED = 0;
    SHARINGSTATUS_SHARED = 1;
    SHARINGSTATUS_PRIVATE = 2;

    //  Name:     System.Shell.OmitFromView -- PKEY_Shell_OmitFromView
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {DE35258C-C695-4CBC-B982-38B0AD24CED0}, 2

    //  Set this to a string value of 'True' to omit this item from shell views
    PKEY_Shell_OmitFromView: TPROPERTYKEY = (fmtid: '{DE35258C-C695-4CBC-B982-38B0AD24CED0}'; pid: 2);

    //  Name:     System.SimpleRating -- PKEY_SimpleRating
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {A09F084E-AD41-489F-8076-AA5BE3082BCA}, 100

    //  Indicates the users preference rating of an item on a scale of 0-5 (0=unrated, 1=One Star, 2=Two Stars, 3=Three Stars,
    //  4=Four Stars, 5=Five Stars)
    PKEY_SimpleRating: TPROPERTYKEY = (fmtid: '{A09F084E-AD41-489F-8076-AA5BE3082BCA}'; pid: 100);

    //  Name:     System.Size -- PKEY_Size
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 12 (PID_STG_SIZE)


    PKEY_Size: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 12);

    //  Name:     System.SoftwareUsed -- PKEY_SoftwareUsed
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 305

    //  PropertyTagSoftwareUsed
    PKEY_SoftwareUsed: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 305);

    //  Name:     System.SourceItem -- PKEY_SourceItem
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {668CDFA5-7A1B-4323-AE4B-E527393A1D81}, 100
    PKEY_SourceItem: TPROPERTYKEY = (fmtid: '{668CDFA5-7A1B-4323-AE4B-E527393A1D81}'; pid: 100);

    //  Name:     System.SourcePackageFamilyName -- PKEY_SourcePackageFamilyName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FFAE9DB7-1C8D-43FF-818C-84403AA3732D}, 100

    //  Package family name of the app which the storage item instance originated.
    PKEY_SourcePackageFamilyName: TPROPERTYKEY = (fmtid: '{FFAE9DB7-1C8D-43FF-818C-84403AA3732D}'; pid: 100);

    //  Name:     System.StartDate -- PKEY_StartDate
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {48FD6EC8-8A12-4CDF-A03E-4EC5A511EDDE}, 100
    PKEY_StartDate: TPROPERTYKEY = (fmtid: '{48FD6EC8-8A12-4CDF-A03E-4EC5A511EDDE}'; pid: 100);

    //  Name:     System.Status -- PKEY_Status
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_IntSite) {000214A1-0000-0000-C000-000000000046}, 9
    PKEY_Status: TPROPERTYKEY = (fmtid: '{000214A1-0000-0000-C000-000000000046}'; pid: 9);

    //  Name:     System.StorageProviderCallerVersionInformation -- PKEY_StorageProviderCallerVersionInformation
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}, 7

    //  The storage provider caller protocol version information.
    //  The format of this property is provider specific, refer to the storage provider documentation for more information.
    PKEY_StorageProviderCallerVersionInformation: TPROPERTYKEY = (fmtid: '{B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}'; pid: 7);

    //  Name:     System.StorageProviderError -- PKEY_StorageProviderError
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 109
    PKEY_StorageProviderError: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 109);

    //  Name:     System.StorageProviderFileChecksum -- PKEY_StorageProviderFileChecksum
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: {B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}, 5

    //  The checksum computed by the storage provider for the file. Files with the same checksum value will have the same contents.
    PKEY_StorageProviderFileChecksum: TPROPERTYKEY = (fmtid: '{B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}'; pid: 5);

    //  Name:     System.StorageProviderFileFlags -- PKEY_StorageProviderFileFlags
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}, 8

    //  Information specified by the storage provider about a file or a folder.
    PKEY_StorageProviderFileFlags: TPROPERTYKEY = (fmtid: '{B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}'; pid: 8);

    //  Name:     System.StorageProviderFileHasConflict -- PKEY_StorageProviderFileHasConflict
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}, 9

    //  There is a conflict with the version of the file in the cloud.
    PKEY_StorageProviderFileHasConflict: TPROPERTYKEY = (fmtid: '{B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}'; pid: 9);

    //  Name:     System.StorageProviderFileIdentifier -- PKEY_StorageProviderFileIdentifier
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}, 3

    //  The storage provider identifier for this file.
    PKEY_StorageProviderFileIdentifier: TPROPERTYKEY = (fmtid: '{B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}'; pid: 3);

    //  Name:     System.StorageProviderFileRemoteUri -- PKEY_StorageProviderFileRemoteUri
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 112

    //  The storage provider's remote Uri for this file.
    PKEY_StorageProviderFileRemoteUri: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 112);

    //  Name:     System.StorageProviderFileVersion -- PKEY_StorageProviderFileVersion
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}, 4

    //  The storage provider file version for this file.
    PKEY_StorageProviderFileVersion: TPROPERTYKEY = (fmtid: '{B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}'; pid: 4);

    //  Name:     System.StorageProviderFileVersionWaterline -- PKEY_StorageProviderFileVersionWaterline
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: {B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}, 6

    //  The storage provider computed file version waterline for this file. This value is used to detect if a file has changed.
    PKEY_StorageProviderFileVersionWaterline: TPROPERTYKEY = (fmtid: '{B2F9B9D6-FEC4-4DD5-94D7-8957488C807B}'; pid: 6);

    //  Name:     System.StorageProviderId -- PKEY_StorageProviderId
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 108

    //  This property represents the [Storage Provider ID] part of the fully-qualified provider identifier
    //  "[Storage Provider ID]![Windows SID]![Account ID]".
    PKEY_StorageProviderId: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 108);

    //  Name:     System.StorageProviderShareStatuses -- PKEY_StorageProviderShareStatuses
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 111

    //  This property represents a list of share statuses for the file/folder specified by the storage provider.
    //  Each share status must be one of the known value specified by the enumerations below
    //  StorageProviderShareStatuses is a readonly property, it should only be updated by the storage provider.
    PKEY_StorageProviderShareStatuses: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 111);

    // Possible discrete values for PKEY_StorageProviderShareStatuses are:
    STORAGE_PROVIDER_SHARE_STATUS_PRIVATE = WideString('Private');
    STORAGE_PROVIDER_SHARE_STATUS_SHARED = WideString('Shared');
    STORAGE_PROVIDER_SHARE_STATUS_PUBLIC = WideString('Public');
    STORAGE_PROVIDER_SHARE_STATUS_GROUP = WideString('Group');
    STORAGE_PROVIDER_SHARE_STATUS_OWNER = WideString('Owner');

    //  Name:     System.StorageProviderSharingStatus -- PKEY_StorageProviderSharingStatus
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 117

    //  This property represents a the most permissive share status for the file/folder specified by the storage provider.
    //  The share statuses from most to least permissive are Owned > Co-owned > Public > Shared > Private.
    //  StorageProviderSharingStatus is a readonly property.
    PKEY_StorageProviderSharingStatus: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 117);

    // Possible discrete values for PKEY_StorageProviderSharingStatus are:
    STORAGE_PROVIDER_SHARINGSTATUS_NOTSHARED = 0;
    STORAGE_PROVIDER_SHARINGSTATUS_SHARED = 1;
    STORAGE_PROVIDER_SHARINGSTATUS_PRIVATE = 2;
    STORAGE_PROVIDER_SHARINGSTATUS_PUBLIC = 3;
    STORAGE_PROVIDER_SHARINGSTATUS_SHARED_OWNED = 4;
    STORAGE_PROVIDER_SHARINGSTATUS_SHARED_COOWNED = 5;
    STORAGE_PROVIDER_SHARINGSTATUS_PUBLIC_OWNED = 6;
    STORAGE_PROVIDER_SHARINGSTATUS_PUBLIC_COOWNED = 7;

    //  Name:     System.StorageProviderStatus -- PKEY_StorageProviderStatus
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 110
    PKEY_StorageProviderStatus: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 110);

    //  Name:     System.Subject -- PKEY_Subject
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 3 (PIDSI_SUBJECT)


    PKEY_Subject: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 3);

    //  Name:     System.SyncTransferStatus -- PKEY_SyncTransferStatus
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 103
    PKEY_SyncTransferStatus: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 103);

    //  Name:     System.Thumbnail -- PKEY_Thumbnail
    //  Type:     Clipboard -- VT_CF
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 17 (PIDSI_THUMBNAIL)

    //  A data that represents the thumbnail in VT_CF format.
    PKEY_Thumbnail: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 17);

    //  Name:     System.ThumbnailCacheId -- PKEY_ThumbnailCacheId
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: {446D16B1-8DAD-4870-A748-402EA43D788C}, 100

    //  Unique value that can be used as a key to cache thumbnails. The value changes when the name, volume, or data modified
    //  of an item changes.
    PKEY_ThumbnailCacheId: TPROPERTYKEY = (fmtid: '{446D16B1-8DAD-4870-A748-402EA43D788C}'; pid: 100);

    //  Name:     System.ThumbnailStream -- PKEY_ThumbnailStream
    //  Type:     Stream -- VT_STREAM
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 27

    //  Data that represents the thumbnail in VT_STREAM format that GDI+/WindowsCodecs supports (jpg, png, etc).
    PKEY_ThumbnailStream: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 27);

    //  Name:     System.Title -- PKEY_Title
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)  Legacy code may treat this as VT_LPSTR.
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 2 (PIDSI_TITLE)

    //  Title of item.
    PKEY_Title: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 2);

    //  Name:     System.TitleSortOverride -- PKEY_TitleSortOverride
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)  Legacy code may treat this as VT_LPSTR.
    //  FormatID: {F0F7984D-222E-4AD2-82AB-1DD8EA40E57E}, 300 (PIDSI_TITLE_SORT_OVERRIDE)

    //  This optional string value allows for overriding the standard sort order of System.Title.
    //  This is very important for proper sorting of music files in Japanese which cannot be
    //  correctly sorted phonetically (the user-expected ordering) without this field.
    //  It can also be used for customizing sorting in non-East Asian scenarios,
    //  such as allowing the user to remove articles for sorting purposes.
    PKEY_TitleSortOverride: TPROPERTYKEY = (fmtid: '{F0F7984D-222E-4AD2-82AB-1DD8EA40E57E}'; pid: 300);

    //  Name:     System.TotalFileSize -- PKEY_TotalFileSize
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 14


    PKEY_TotalFileSize: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 14);

    //  Name:     System.Trademarks -- PKEY_Trademarks
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSFMTID_VERSION) {0CEF7D53-FA64-11D1-A203-0000F81FEDEE}, 9 (PIDVSI_Trademarks)


    PKEY_Trademarks: TPROPERTYKEY = (fmtid: '{0CEF7D53-FA64-11D1-A203-0000F81FEDEE}'; pid: 9);

    //  Name:     System.TransferOrder -- PKEY_TransferOrder
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 106
    PKEY_TransferOrder: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 106);

    //  Name:     System.TransferPosition -- PKEY_TransferPosition
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 104
    PKEY_TransferPosition: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 104);

    //  Name:     System.TransferSize -- PKEY_TransferSize
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: {FCEFF153-E839-4CF3-A9E7-EA22832094B8}, 105
    PKEY_TransferSize: TPROPERTYKEY = (fmtid: '{FCEFF153-E839-4CF3-A9E7-EA22832094B8}'; pid: 105);

    //  Name:     System.VolumeId -- PKEY_VolumeId
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {446D16B1-8DAD-4870-A748-402EA43D788C}, 104

    //  The GUID of the NTFS Volume.
    PKEY_VolumeId: TPROPERTYKEY = (fmtid: '{446D16B1-8DAD-4870-A748-402EA43D788C}'; pid: 104);

    //  Name:     System.ZoneIdentifier -- PKEY_ZoneIdentifier
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {502CFEAB-47EB-459C-B960-E6D8728F7701}, 100

    //  Mark of the Web zone, as URLZONE enumeration value.
    PKEY_ZoneIdentifier: TPROPERTYKEY = (fmtid: '{502CFEAB-47EB-459C-B960-E6D8728F7701}'; pid: 100);

    //-----------------------------------------------------------------------------
    // Devices properties

    //  Name:     System.Device.PrinterURL -- PKEY_Device_PrinterURL
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {0B48F35A-BE6E-4F17-B108-3C4073D1669A}, 15

    //  Printer information Printer URL.
    PKEY_Device_PrinterURL: TPROPERTYKEY = (fmtid: '{0B48F35A-BE6E-4F17-B108-3C4073D1669A}'; pid: 15);

    //  Name:     System.DeviceInterface.Bluetooth.DeviceAddress -- PKEY_DeviceInterface_Bluetooth_DeviceAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}, 1

    //  Bluetooth device address.
    PKEY_DeviceInterface_Bluetooth_DeviceAddress: TPROPERTYKEY = (fmtid: '{2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}'; pid: 1);

    //  Name:     System.DeviceInterface.Bluetooth.Flags -- PKEY_DeviceInterface_Bluetooth_Flags
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}, 3

    //  Bluetooth device flags.
    PKEY_DeviceInterface_Bluetooth_Flags: TPROPERTYKEY = (fmtid: '{2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}'; pid: 3);

    //  Name:     System.DeviceInterface.Bluetooth.LastConnectedTime -- PKEY_DeviceInterface_Bluetooth_LastConnectedTime
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}, 11

    //  Bluetooth device last connected time.
    PKEY_DeviceInterface_Bluetooth_LastConnectedTime: TPROPERTYKEY = (fmtid: '{2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}'; pid: 11);

    //  Name:     System.DeviceInterface.Bluetooth.Manufacturer -- PKEY_DeviceInterface_Bluetooth_Manufacturer
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}, 4

    //  Bluetooth device manufacturer.
    PKEY_DeviceInterface_Bluetooth_Manufacturer: TPROPERTYKEY = (fmtid: '{2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}'; pid: 4);

    //  Name:     System.DeviceInterface.Bluetooth.ModelNumber -- PKEY_DeviceInterface_Bluetooth_ModelNumber
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}, 5

    //  Bluetooth device model number.
    PKEY_DeviceInterface_Bluetooth_ModelNumber: TPROPERTYKEY = (fmtid: '{2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}'; pid: 5);

    //  Name:     System.DeviceInterface.Bluetooth.ProductId -- PKEY_DeviceInterface_Bluetooth_ProductId
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}, 8

    //  Bluetooth device product identifier.
    PKEY_DeviceInterface_Bluetooth_ProductId: TPROPERTYKEY = (fmtid: '{2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}'; pid: 8);

    //  Name:     System.DeviceInterface.Bluetooth.ProductVersion -- PKEY_DeviceInterface_Bluetooth_ProductVersion
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}, 9

    //  Bluetooth device product version.
    PKEY_DeviceInterface_Bluetooth_ProductVersion: TPROPERTYKEY = (fmtid: '{2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}'; pid: 9);

    //  Name:     System.DeviceInterface.Bluetooth.ServiceGuid -- PKEY_DeviceInterface_Bluetooth_ServiceGuid
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}, 2

    //  Bluetooth service GUID.
    PKEY_DeviceInterface_Bluetooth_ServiceGuid: TPROPERTYKEY = (fmtid: '{2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}'; pid: 2);

    //  Name:     System.DeviceInterface.Bluetooth.VendorId -- PKEY_DeviceInterface_Bluetooth_VendorId
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}, 7

    //  Bluetooth device vendor identifier.
    PKEY_DeviceInterface_Bluetooth_VendorId: TPROPERTYKEY = (fmtid: '{2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}'; pid: 7);

    //  Name:     System.DeviceInterface.Bluetooth.VendorIdSource -- PKEY_DeviceInterface_Bluetooth_VendorIdSource
    //  Type:     Byte -- VT_UI1
    //  FormatID: {2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}, 6

    //  Bluetooth device vendor identifier source.
    PKEY_DeviceInterface_Bluetooth_VendorIdSource: TPROPERTYKEY = (fmtid: '{2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}'; pid: 6);

    //  Name:     System.DeviceInterface.Hid.IsReadOnly -- PKEY_DeviceInterface_Hid_IsReadOnly
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {CBF38310-4A17-4310-A1EB-247F0B67593B}, 4

    //  Indicates if a HID device is a Read-Only device.
    PKEY_DeviceInterface_Hid_IsReadOnly: TPROPERTYKEY = (fmtid: '{CBF38310-4A17-4310-A1EB-247F0B67593B}'; pid: 4);

    //  Name:     System.DeviceInterface.Hid.ProductId -- PKEY_DeviceInterface_Hid_ProductId
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {CBF38310-4A17-4310-A1EB-247F0B67593B}, 6

    //  HID device Product Id.
    PKEY_DeviceInterface_Hid_ProductId: TPROPERTYKEY = (fmtid: '{CBF38310-4A17-4310-A1EB-247F0B67593B}'; pid: 6);

    //  Name:     System.DeviceInterface.Hid.UsageId -- PKEY_DeviceInterface_Hid_UsageId
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {CBF38310-4A17-4310-A1EB-247F0B67593B}, 3

    //  HID device Usage Id.
    PKEY_DeviceInterface_Hid_UsageId: TPROPERTYKEY = (fmtid: '{CBF38310-4A17-4310-A1EB-247F0B67593B}'; pid: 3);

    //  Name:     System.DeviceInterface.Hid.UsagePage -- PKEY_DeviceInterface_Hid_UsagePage
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {CBF38310-4A17-4310-A1EB-247F0B67593B}, 2

    //  HID device Usage Page.
    PKEY_DeviceInterface_Hid_UsagePage: TPROPERTYKEY = (fmtid: '{CBF38310-4A17-4310-A1EB-247F0B67593B}'; pid: 2);

    //  Name:     System.DeviceInterface.Hid.VendorId -- PKEY_DeviceInterface_Hid_VendorId
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {CBF38310-4A17-4310-A1EB-247F0B67593B}, 5

    //  HID device Vendor Id.
    PKEY_DeviceInterface_Hid_VendorId: TPROPERTYKEY = (fmtid: '{CBF38310-4A17-4310-A1EB-247F0B67593B}'; pid: 5);

    //  Name:     System.DeviceInterface.Hid.VersionNumber -- PKEY_DeviceInterface_Hid_VersionNumber
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {CBF38310-4A17-4310-A1EB-247F0B67593B}, 7

    //  HID device Version Number.
    PKEY_DeviceInterface_Hid_VersionNumber: TPROPERTYKEY = (fmtid: '{CBF38310-4A17-4310-A1EB-247F0B67593B}'; pid: 7);

    //  Name:     System.DeviceInterface.PrinterDriverDirectory -- PKEY_DeviceInterface_PrinterDriverDirectory
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {847C66DE-B8D6-4AF9-ABC3-6F4F926BC039}, 14

    //  Printer information Printer Driver Directory.
    PKEY_DeviceInterface_PrinterDriverDirectory: TPROPERTYKEY = (fmtid: '{847C66DE-B8D6-4AF9-ABC3-6F4F926BC039}'; pid: 14);

    //  Name:     System.DeviceInterface.PrinterDriverName -- PKEY_DeviceInterface_PrinterDriverName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {AFC47170-14F5-498C-8F30-B0D19BE449C6}, 11

    //  Printer information Driver Name.
    PKEY_DeviceInterface_PrinterDriverName: TPROPERTYKEY = (fmtid: '{AFC47170-14F5-498C-8F30-B0D19BE449C6}'; pid: 11);

    //  Name:     System.DeviceInterface.PrinterEnumerationFlag -- PKEY_DeviceInterface_PrinterEnumerationFlag
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {A00742A1-CD8C-4B37-95AB-70755587767A}, 3

    //  Printer information Printer Enumeration Flag.
    PKEY_DeviceInterface_PrinterEnumerationFlag: TPROPERTYKEY = (fmtid: '{A00742A1-CD8C-4B37-95AB-70755587767A}'; pid: 3);

    //  Name:     System.DeviceInterface.PrinterName -- PKEY_DeviceInterface_PrinterName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {0A7B84EF-0C27-463F-84EF-06C5070001BE}, 10

    //  Printer information Printer Name.
    PKEY_DeviceInterface_PrinterName: TPROPERTYKEY = (fmtid: '{0A7B84EF-0C27-463F-84EF-06C5070001BE}'; pid: 10);

    //  Name:     System.DeviceInterface.PrinterPortName -- PKEY_DeviceInterface_PrinterPortName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {EEC7B761-6F94-41B1-949F-C729720DD13C}, 12

    //  Printer information Port Name.
    PKEY_DeviceInterface_PrinterPortName: TPROPERTYKEY = (fmtid: '{EEC7B761-6F94-41B1-949F-C729720DD13C}'; pid: 12);

    //  Name:     System.DeviceInterface.Proximity.SupportsNfc -- PKEY_DeviceInterface_Proximity_SupportsNfc
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {FB3842CD-9E2A-4F83-8FCC-4B0761139AE9}, 2

    //  Indicates whether the device supports NFC communications (NDEF).
    PKEY_DeviceInterface_Proximity_SupportsNfc: TPROPERTYKEY = (fmtid: '{FB3842CD-9E2A-4F83-8FCC-4B0761139AE9}'; pid: 2);

    //  Name:     System.DeviceInterface.Serial.PortName -- PKEY_DeviceInterface_Serial_PortName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {4C6BF15C-4C03-4AAC-91F5-64C0F852BCF4}, 4

    //  Serial device friendly name
    PKEY_DeviceInterface_Serial_PortName: TPROPERTYKEY = (fmtid: '{4C6BF15C-4C03-4AAC-91F5-64C0F852BCF4}'; pid: 4);

    //  Name:     System.DeviceInterface.Serial.UsbProductId -- PKEY_DeviceInterface_Serial_UsbProductId
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {4C6BF15C-4C03-4AAC-91F5-64C0F852BCF4}, 3

    //  Serial device USB Product Id
    PKEY_DeviceInterface_Serial_UsbProductId: TPROPERTYKEY = (fmtid: '{4C6BF15C-4C03-4AAC-91F5-64C0F852BCF4}'; pid: 3);

    //  Name:     System.DeviceInterface.Serial.UsbVendorId -- PKEY_DeviceInterface_Serial_UsbVendorId
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {4C6BF15C-4C03-4AAC-91F5-64C0F852BCF4}, 2

    //  Serial device USB Vendor Id.
    PKEY_DeviceInterface_Serial_UsbVendorId: TPROPERTYKEY = (fmtid: '{4C6BF15C-4C03-4AAC-91F5-64C0F852BCF4}'; pid: 2);

    //  Name:     System.DeviceInterface.WinUsb.DeviceInterfaceClasses -- PKEY_DeviceInterface_WinUsb_DeviceInterfaceClasses
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {95E127B5-79CC-4E83-9C9E-8422187B3E0E}, 7

    //  WinUSB device interface GUID(s) used to open a handle to the device.
    PKEY_DeviceInterface_WinUsb_DeviceInterfaceClasses: TPROPERTYKEY = (fmtid: '{95E127B5-79CC-4E83-9C9E-8422187B3E0E}'; pid: 7);

    //  Name:     System.DeviceInterface.WinUsb.UsbClass -- PKEY_DeviceInterface_WinUsb_UsbClass
    //  Type:     Byte -- VT_UI1
    //  FormatID: {95E127B5-79CC-4E83-9C9E-8422187B3E0E}, 4

    //  Class value from the USB device's first USB Interface Descriptor.
    PKEY_DeviceInterface_WinUsb_UsbClass: TPROPERTYKEY = (fmtid: '{95E127B5-79CC-4E83-9C9E-8422187B3E0E}'; pid: 4);

    //  Name:     System.DeviceInterface.WinUsb.UsbProductId -- PKEY_DeviceInterface_WinUsb_UsbProductId
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {95E127B5-79CC-4E83-9C9E-8422187B3E0E}, 3

    //  Product ID from the USB device's USB Device Descriptor.
    PKEY_DeviceInterface_WinUsb_UsbProductId: TPROPERTYKEY = (fmtid: '{95E127B5-79CC-4E83-9C9E-8422187B3E0E}'; pid: 3);

    //  Name:     System.DeviceInterface.WinUsb.UsbProtocol -- PKEY_DeviceInterface_WinUsb_UsbProtocol
    //  Type:     Byte -- VT_UI1
    //  FormatID: {95E127B5-79CC-4E83-9C9E-8422187B3E0E}, 6

    //  Protocol value from the USB device's first USB Interface Descriptor.
    PKEY_DeviceInterface_WinUsb_UsbProtocol: TPROPERTYKEY = (fmtid: '{95E127B5-79CC-4E83-9C9E-8422187B3E0E}'; pid: 6);

    //  Name:     System.DeviceInterface.WinUsb.UsbSubClass -- PKEY_DeviceInterface_WinUsb_UsbSubClass
    //  Type:     Byte -- VT_UI1
    //  FormatID: {95E127B5-79CC-4E83-9C9E-8422187B3E0E}, 5

    //  SubClass value from the USB device's first USB Interface Descriptor.
    PKEY_DeviceInterface_WinUsb_UsbSubClass: TPROPERTYKEY = (fmtid: '{95E127B5-79CC-4E83-9C9E-8422187B3E0E}'; pid: 5);

    //  Name:     System.DeviceInterface.WinUsb.UsbVendorId -- PKEY_DeviceInterface_WinUsb_UsbVendorId
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {95E127B5-79CC-4E83-9C9E-8422187B3E0E}, 2

    //  Vendor ID from the USB device's USB Device Descriptor.
    PKEY_DeviceInterface_WinUsb_UsbVendorId: TPROPERTYKEY = (fmtid: '{95E127B5-79CC-4E83-9C9E-8422187B3E0E}'; pid: 2);

    //  Name:     System.Devices.Aep.AepId -- PKEY_Devices_Aep_AepId
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {3B2CE006-5E61-4FDE-BAB8-9B8AAC9B26DF}, 8

    //  Identity of the Device Association Endpoint
    PKEY_Devices_Aep_AepId: TPROPERTYKEY = (fmtid: '{3B2CE006-5E61-4FDE-BAB8-9B8AAC9B26DF}'; pid: 8);

    //  Name:     System.Devices.Aep.Bluetooth.Cod.Major -- PKEY_Devices_Aep_Bluetooth_Cod_Major
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {5FBD34CD-561A-412E-BA98-478A6B0FEF1D}, 2

    //  Bluetooth class of device major code.
    PKEY_Devices_Aep_Bluetooth_Cod_Major: TPROPERTYKEY = (fmtid: '{5FBD34CD-561A-412E-BA98-478A6B0FEF1D}'; pid: 2);

    //  Name:     System.Devices.Aep.Bluetooth.Cod.Minor -- PKEY_Devices_Aep_Bluetooth_Cod_Minor
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {5FBD34CD-561A-412E-BA98-478A6B0FEF1D}, 3

    //  Bluetooth class of device minor code.
    PKEY_Devices_Aep_Bluetooth_Cod_Minor: TPROPERTYKEY = (fmtid: '{5FBD34CD-561A-412E-BA98-478A6B0FEF1D}'; pid: 3);

    //  Name:     System.Devices.Aep.Bluetooth.Cod.Services.Audio -- PKEY_Devices_Aep_Bluetooth_Cod_Services_Audio
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5FBD34CD-561A-412E-BA98-478A6B0FEF1D}, 10

    //  Bluetooth class of device service audio.
    PKEY_Devices_Aep_Bluetooth_Cod_Services_Audio: TPROPERTYKEY = (fmtid: '{5FBD34CD-561A-412E-BA98-478A6B0FEF1D}'; pid: 10);

    //  Name:     System.Devices.Aep.Bluetooth.Cod.Services.Capturing -- PKEY_Devices_Aep_Bluetooth_Cod_Services_Capturing
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5FBD34CD-561A-412E-BA98-478A6B0FEF1D}, 8

    //  Bluetooth class of device service capturing.
    PKEY_Devices_Aep_Bluetooth_Cod_Services_Capturing: TPROPERTYKEY = (fmtid: '{5FBD34CD-561A-412E-BA98-478A6B0FEF1D}'; pid: 8);

    //  Name:     System.Devices.Aep.Bluetooth.Cod.Services.Information -- PKEY_Devices_Aep_Bluetooth_Cod_Services_Information
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5FBD34CD-561A-412E-BA98-478A6B0FEF1D}, 12

    //  Bluetooth class of device service information
    PKEY_Devices_Aep_Bluetooth_Cod_Services_Information: TPROPERTYKEY = (fmtid: '{5FBD34CD-561A-412E-BA98-478A6B0FEF1D}'; pid: 12);

    //  Name:     System.Devices.Aep.Bluetooth.Cod.Services.LimitedDiscovery -- PKEY_Devices_Aep_Bluetooth_Cod_Services_LimitedDiscovery
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5FBD34CD-561A-412E-BA98-478A6B0FEF1D}, 4

    //  Bluetooth class of device service limited discovery.
    PKEY_Devices_Aep_Bluetooth_Cod_Services_LimitedDiscovery: TPROPERTYKEY = (fmtid: '{5FBD34CD-561A-412E-BA98-478A6B0FEF1D}'; pid: 4);

    //  Name:     System.Devices.Aep.Bluetooth.Cod.Services.Networking -- PKEY_Devices_Aep_Bluetooth_Cod_Services_Networking
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5FBD34CD-561A-412E-BA98-478A6B0FEF1D}, 6

    //  Bluetooth class of device service networking.
    PKEY_Devices_Aep_Bluetooth_Cod_Services_Networking: TPROPERTYKEY = (fmtid: '{5FBD34CD-561A-412E-BA98-478A6B0FEF1D}'; pid: 6);

    //  Name:     System.Devices.Aep.Bluetooth.Cod.Services.ObjectXfer -- PKEY_Devices_Aep_Bluetooth_Cod_Services_ObjectXfer
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5FBD34CD-561A-412E-BA98-478A6B0FEF1D}, 9

    //  Bluetooth class of device service object transfer.
    PKEY_Devices_Aep_Bluetooth_Cod_Services_ObjectXfer: TPROPERTYKEY = (fmtid: '{5FBD34CD-561A-412E-BA98-478A6B0FEF1D}'; pid: 9);

    //  Name:     System.Devices.Aep.Bluetooth.Cod.Services.Positioning -- PKEY_Devices_Aep_Bluetooth_Cod_Services_Positioning
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5FBD34CD-561A-412E-BA98-478A6B0FEF1D}, 5

    //  Bluetooth class of device service positioning.
    PKEY_Devices_Aep_Bluetooth_Cod_Services_Positioning: TPROPERTYKEY = (fmtid: '{5FBD34CD-561A-412E-BA98-478A6B0FEF1D}'; pid: 5);

    //  Name:     System.Devices.Aep.Bluetooth.Cod.Services.Rendering -- PKEY_Devices_Aep_Bluetooth_Cod_Services_Rendering
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5FBD34CD-561A-412E-BA98-478A6B0FEF1D}, 7

    //  Bluetooth class of device service rendering.
    PKEY_Devices_Aep_Bluetooth_Cod_Services_Rendering: TPROPERTYKEY = (fmtid: '{5FBD34CD-561A-412E-BA98-478A6B0FEF1D}'; pid: 7);

    //  Name:     System.Devices.Aep.Bluetooth.Cod.Services.Telephony -- PKEY_Devices_Aep_Bluetooth_Cod_Services_Telephony
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {5FBD34CD-561A-412E-BA98-478A6B0FEF1D}, 11

    //  Bluetooth class of device service telephony.
    PKEY_Devices_Aep_Bluetooth_Cod_Services_Telephony: TPROPERTYKEY = (fmtid: '{5FBD34CD-561A-412E-BA98-478A6B0FEF1D}'; pid: 11);

    //  Name:     System.Devices.Aep.Bluetooth.LastSeenTime -- PKEY_Devices_Aep_Bluetooth_LastSeenTime
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}, 12

    //  The time stamp the device was last seen via an inquiry or advertisement.
    PKEY_Devices_Aep_Bluetooth_LastSeenTime: TPROPERTYKEY = (fmtid: '{2BD67D8B-8BEB-48D5-87E0-6CDA3428040A}'; pid: 12);

    //  Name:     System.Devices.Aep.Bluetooth.Le.AddressType -- PKEY_Devices_Aep_Bluetooth_Le_AddressType
    //  Type:     Byte -- VT_UI1
    //  FormatID: {995EF0B0-7EB3-4A8B-B9CE-068BB3F4AF69}, 4

    //  Bluetooth LE device address type.
    PKEY_Devices_Aep_Bluetooth_Le_AddressType: TPROPERTYKEY = (fmtid: '{995EF0B0-7EB3-4A8B-B9CE-068BB3F4AF69}'; pid: 4);

    // Possible discrete values for PKEY_Devices_Aep_Bluetooth_Le_AddressType are:
    BLUETOOTH_ADDRESS_TYPE_PUBLIC = 0;
    BLUETOOTH_ADDRESS_TYPE_RANDOM = 1;

    //  Name:     System.Devices.Aep.Bluetooth.Le.Appearance -- PKEY_Devices_Aep_Bluetooth_Le_Appearance
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {995EF0B0-7EB3-4A8B-B9CE-068BB3F4AF69}, 1

    //  Bluetooth LE device appearance.
    PKEY_Devices_Aep_Bluetooth_Le_Appearance: TPROPERTYKEY = (fmtid: '{995EF0B0-7EB3-4A8B-B9CE-068BB3F4AF69}'; pid: 1);

    //  Name:     System.Devices.Aep.Bluetooth.Le.Appearance.Category -- PKEY_Devices_Aep_Bluetooth_Le_Appearance_Category
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {995EF0B0-7EB3-4A8B-B9CE-068BB3F4AF69}, 5

    //  Bluetooth LE device appearance.
    PKEY_Devices_Aep_Bluetooth_Le_Appearance_Category: TPROPERTYKEY = (fmtid: '{995EF0B0-7EB3-4A8B-B9CE-068BB3F4AF69}'; pid: 5);

    //  Name:     System.Devices.Aep.Bluetooth.Le.Appearance.Subcategory -- PKEY_Devices_Aep_Bluetooth_Le_Appearance_Subcategory
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {995EF0B0-7EB3-4A8B-B9CE-068BB3F4AF69}, 6

    //  Bluetooth LE device appearance.
    PKEY_Devices_Aep_Bluetooth_Le_Appearance_Subcategory: TPROPERTYKEY = (fmtid: '{995EF0B0-7EB3-4A8B-B9CE-068BB3F4AF69}'; pid: 6);

    //  Name:     System.Devices.Aep.Bluetooth.Le.IsConnectable -- PKEY_Devices_Aep_Bluetooth_Le_IsConnectable
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {995EF0B0-7EB3-4A8B-B9CE-068BB3F4AF69}, 8

    //  Whether the Bluetooth LE device is currently advertising a connectable advertisement.
    PKEY_Devices_Aep_Bluetooth_Le_IsConnectable: TPROPERTYKEY = (fmtid: '{995EF0B0-7EB3-4A8B-B9CE-068BB3F4AF69}'; pid: 8);

    //  Name:     System.Devices.Aep.CanPair -- PKEY_Devices_Aep_CanPair
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {E7C3FB29-CAA7-4F47-8C8B-BE59B330D4C5}, 3

    //  Whether the Device Association Endpoint can be paired with the system or not
    PKEY_Devices_Aep_CanPair: TPROPERTYKEY = (fmtid: '{E7C3FB29-CAA7-4F47-8C8B-BE59B330D4C5}'; pid: 3);

    //  Name:     System.Devices.Aep.Category -- PKEY_Devices_Aep_Category
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {A35996AB-11CF-4935-8B61-A6761081ECDF}, 17

    //  Categories the device is part of. e.g. Printer, Camera, etc.
    PKEY_Devices_Aep_Category: TPROPERTYKEY = (fmtid: '{A35996AB-11CF-4935-8B61-A6761081ECDF}'; pid: 17);

    //  Name:     System.Devices.Aep.ContainerId -- PKEY_Devices_Aep_ContainerId
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {E7C3FB29-CAA7-4F47-8C8B-BE59B330D4C5}, 2

    //  Device Association Endpoint's Parent Container Id
    PKEY_Devices_Aep_ContainerId: TPROPERTYKEY = (fmtid: '{E7C3FB29-CAA7-4F47-8C8B-BE59B330D4C5}'; pid: 2);

    //  Name:     System.Devices.Aep.DeviceAddress -- PKEY_Devices_Aep_DeviceAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A35996AB-11CF-4935-8B61-A6761081ECDF}, 12

    //  Address based on the protocol of the Device Association Endpoint. IP Address for an IP device, Bluetooth address for Bluetooth device, etc.
    PKEY_Devices_Aep_DeviceAddress: TPROPERTYKEY = (fmtid: '{A35996AB-11CF-4935-8B61-A6761081ECDF}'; pid: 12);

    //  Name:     System.Devices.Aep.IsConnected -- PKEY_Devices_Aep_IsConnected
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {A35996AB-11CF-4935-8B61-A6761081ECDF}, 7

    //  Whether the device is currently connected to the system or or not
    PKEY_Devices_Aep_IsConnected: TPROPERTYKEY = (fmtid: '{A35996AB-11CF-4935-8B61-A6761081ECDF}'; pid: 7);

    //  Name:     System.Devices.Aep.IsPaired -- PKEY_Devices_Aep_IsPaired
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {A35996AB-11CF-4935-8B61-A6761081ECDF}, 16

    //  Whether the Device Association Endpoint is paired with the system or not
    PKEY_Devices_Aep_IsPaired: TPROPERTYKEY = (fmtid: '{A35996AB-11CF-4935-8B61-A6761081ECDF}'; pid: 16);

    //  Name:     System.Devices.Aep.IsPresent -- PKEY_Devices_Aep_IsPresent
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {A35996AB-11CF-4935-8B61-A6761081ECDF}, 9

    //  Whether the device is currently present or not
    PKEY_Devices_Aep_IsPresent: TPROPERTYKEY = (fmtid: '{A35996AB-11CF-4935-8B61-A6761081ECDF}'; pid: 9);

    //  Name:     System.Devices.Aep.Manufacturer -- PKEY_Devices_Aep_Manufacturer
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A35996AB-11CF-4935-8B61-A6761081ECDF}, 5

    //  Device Association Endpoint's Manufacturer
    PKEY_Devices_Aep_Manufacturer: TPROPERTYKEY = (fmtid: '{A35996AB-11CF-4935-8B61-A6761081ECDF}'; pid: 5);

    //  Name:     System.Devices.Aep.ModelId -- PKEY_Devices_Aep_ModelId
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {A35996AB-11CF-4935-8B61-A6761081ECDF}, 4

    //  Device Association Endpoint's Model Id
    PKEY_Devices_Aep_ModelId: TPROPERTYKEY = (fmtid: '{A35996AB-11CF-4935-8B61-A6761081ECDF}'; pid: 4);

    //  Name:     System.Devices.Aep.ModelName -- PKEY_Devices_Aep_ModelName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A35996AB-11CF-4935-8B61-A6761081ECDF}, 3

    //  Device Association Endpoint's Model Name
    PKEY_Devices_Aep_ModelName: TPROPERTYKEY = (fmtid: '{A35996AB-11CF-4935-8B61-A6761081ECDF}'; pid: 3);

    //  Name:     System.Devices.Aep.PointOfService.ConnectionTypes -- PKEY_Devices_Aep_PointOfService_ConnectionTypes
    //  Type:     Int32 -- VT_I4
    //  FormatID: {D4BF61B3-442E-4ADA-882D-FA7B70C832D9}, 6

    //  A bit mask that specifies which connection types should be included in the search.
    PKEY_Devices_Aep_PointOfService_ConnectionTypes: TPROPERTYKEY = (fmtid: '{D4BF61B3-442E-4ADA-882D-FA7B70C832D9}'; pid: 6);

    //  Name:     System.Devices.Aep.ProtocolId -- PKEY_Devices_Aep_ProtocolId
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {3B2CE006-5E61-4FDE-BAB8-9B8AAC9B26DF}, 5

    //  Identity of the protocol this Device Association Endpoint was discovered over
    PKEY_Devices_Aep_ProtocolId: TPROPERTYKEY = (fmtid: '{3B2CE006-5E61-4FDE-BAB8-9B8AAC9B26DF}'; pid: 5);

    //  Name:     System.Devices.Aep.SignalStrength -- PKEY_Devices_Aep_SignalStrength
    //  Type:     Int32 -- VT_I4
    //  FormatID: {A35996AB-11CF-4935-8B61-A6761081ECDF}, 6

    //  Signal strength of the device. Only applicable for some protocols.
    PKEY_Devices_Aep_SignalStrength: TPROPERTYKEY = (fmtid: '{A35996AB-11CF-4935-8B61-A6761081ECDF}'; pid: 6);

    //  Name:     System.Devices.AepContainer.CanPair -- PKEY_Devices_AepContainer_CanPair
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {0BBA1EDE-7566-4F47-90EC-25FC567CED2A}, 3

    //  Whether one of the child Device Association Endpoints can be paired with the system or not.
    PKEY_Devices_AepContainer_CanPair: TPROPERTYKEY = (fmtid: '{0BBA1EDE-7566-4F47-90EC-25FC567CED2A}'; pid: 3);

    //  Name:     System.Devices.AepContainer.Categories -- PKEY_Devices_AepContainer_Categories
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {0BBA1EDE-7566-4F47-90EC-25FC567CED2A}, 9

    //  Categories the device is part of. e.g. Printer, Camera, etc.
    PKEY_Devices_AepContainer_Categories: TPROPERTYKEY = (fmtid: '{0BBA1EDE-7566-4F47-90EC-25FC567CED2A}'; pid: 9);

    //  Name:     System.Devices.AepContainer.Children -- PKEY_Devices_AepContainer_Children
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {0BBA1EDE-7566-4F47-90EC-25FC567CED2A}, 2

    //  List of child Device Association Endpoint Identities that are part of this Device Association Endpoint Container
    PKEY_Devices_AepContainer_Children: TPROPERTYKEY = (fmtid: '{0BBA1EDE-7566-4F47-90EC-25FC567CED2A}'; pid: 2);

    //  Name:     System.Devices.AepContainer.ContainerId -- PKEY_Devices_AepContainer_ContainerId
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {0BBA1EDE-7566-4F47-90EC-25FC567CED2A}, 12

    //  Device Association Endpoint Container's Identity
    PKEY_Devices_AepContainer_ContainerId: TPROPERTYKEY = (fmtid: '{0BBA1EDE-7566-4F47-90EC-25FC567CED2A}'; pid: 12);

    //  Name:     System.Devices.AepContainer.DialProtocol.InstalledApplications -- PKEY_Devices_AepContainer_DialProtocol_InstalledApplications
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {6AF55D45-38DB-4495-ACB0-D4728A3B8314}, 6

    //  List of applications supporting DIAL protocol on the Device Association End Point Container
    PKEY_Devices_AepContainer_DialProtocol_InstalledApplications: TPROPERTYKEY = (fmtid: '{6AF55D45-38DB-4495-ACB0-D4728A3B8314}'; pid: 6);

    //  Name:     System.Devices.AepContainer.IsPaired -- PKEY_Devices_AepContainer_IsPaired
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {0BBA1EDE-7566-4F47-90EC-25FC567CED2A}, 4

    //  Whether one of the child Device Association Endpoints is paired with the system or not.
    PKEY_Devices_AepContainer_IsPaired: TPROPERTYKEY = (fmtid: '{0BBA1EDE-7566-4F47-90EC-25FC567CED2A}'; pid: 4);

    //  Name:     System.Devices.AepContainer.IsPresent -- PKEY_Devices_AepContainer_IsPresent
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {0BBA1EDE-7566-4F47-90EC-25FC567CED2A}, 11

    //  Whether one of the Device Association Endpoints is currently present or not
    PKEY_Devices_AepContainer_IsPresent: TPROPERTYKEY = (fmtid: '{0BBA1EDE-7566-4F47-90EC-25FC567CED2A}'; pid: 11);

    //  Name:     System.Devices.AepContainer.Manufacturer -- PKEY_Devices_AepContainer_Manufacturer
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {0BBA1EDE-7566-4F47-90EC-25FC567CED2A}, 6

    //  Manufacturer of the device
    PKEY_Devices_AepContainer_Manufacturer: TPROPERTYKEY = (fmtid: '{0BBA1EDE-7566-4F47-90EC-25FC567CED2A}'; pid: 6);

    //  Name:     System.Devices.AepContainer.ModelIds -- PKEY_Devices_AepContainer_ModelIds
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {0BBA1EDE-7566-4F47-90EC-25FC567CED2A}, 8

    //  List of Model Ids for the device. Each Model Id is a Guid in string form.
    PKEY_Devices_AepContainer_ModelIds: TPROPERTYKEY = (fmtid: '{0BBA1EDE-7566-4F47-90EC-25FC567CED2A}'; pid: 8);

    //  Name:     System.Devices.AepContainer.ModelName -- PKEY_Devices_AepContainer_ModelName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {0BBA1EDE-7566-4F47-90EC-25FC567CED2A}, 7

    //  Model Name of the device
    PKEY_Devices_AepContainer_ModelName: TPROPERTYKEY = (fmtid: '{0BBA1EDE-7566-4F47-90EC-25FC567CED2A}'; pid: 7);

    //  Name:     System.Devices.AepContainer.ProtocolIds -- PKEY_Devices_AepContainer_ProtocolIds
    //  Type:     Multivalue Guid -- VT_VECTOR | VT_CLSID  (For variants: VT_ARRAY | VT_CLSID)
    //  FormatID: {0BBA1EDE-7566-4F47-90EC-25FC567CED2A}, 13

    //  List of Protocol Ids that have contributed to building the Device Association Endpoint Container
    PKEY_Devices_AepContainer_ProtocolIds: TPROPERTYKEY = (fmtid: '{0BBA1EDE-7566-4F47-90EC-25FC567CED2A}'; pid: 13);

    //  Name:     System.Devices.AepContainer.SupportedUriSchemes -- PKEY_Devices_AepContainer_SupportedUriSchemes
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {6AF55D45-38DB-4495-ACB0-D4728A3B8314}, 5

    //  List of Casting Uri Schemes Supported by the Device Association Endpoint Container
    PKEY_Devices_AepContainer_SupportedUriSchemes: TPROPERTYKEY = (fmtid: '{6AF55D45-38DB-4495-ACB0-D4728A3B8314}'; pid: 5);

    //  Name:     System.Devices.AepContainer.SupportsAudio -- PKEY_Devices_AepContainer_SupportsAudio
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6AF55D45-38DB-4495-ACB0-D4728A3B8314}, 2

    //  Indicates if the Device Association Endpoint Container Supports Audio Casting
    PKEY_Devices_AepContainer_SupportsAudio: TPROPERTYKEY = (fmtid: '{6AF55D45-38DB-4495-ACB0-D4728A3B8314}'; pid: 2);

    //  Name:     System.Devices.AepContainer.SupportsCapturing -- PKEY_Devices_AepContainer_SupportsCapturing
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6AF55D45-38DB-4495-ACB0-D4728A3B8314}, 11

    //  Indicates if the Device Association Endpoint Container Supports Capturing
    PKEY_Devices_AepContainer_SupportsCapturing: TPROPERTYKEY = (fmtid: '{6AF55D45-38DB-4495-ACB0-D4728A3B8314}'; pid: 11);

    //  Name:     System.Devices.AepContainer.SupportsImages -- PKEY_Devices_AepContainer_SupportsImages
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6AF55D45-38DB-4495-ACB0-D4728A3B8314}, 4

    //  Indicates if the Device Association Endpoint Container Supports Image Casting
    PKEY_Devices_AepContainer_SupportsImages: TPROPERTYKEY = (fmtid: '{6AF55D45-38DB-4495-ACB0-D4728A3B8314}'; pid: 4);

    //  Name:     System.Devices.AepContainer.SupportsInformation -- PKEY_Devices_AepContainer_SupportsInformation
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6AF55D45-38DB-4495-ACB0-D4728A3B8314}, 14

    //  Indicates if the Device Association Endpoint Container Supports Information
    PKEY_Devices_AepContainer_SupportsInformation: TPROPERTYKEY = (fmtid: '{6AF55D45-38DB-4495-ACB0-D4728A3B8314}'; pid: 14);

    //  Name:     System.Devices.AepContainer.SupportsLimitedDiscovery -- PKEY_Devices_AepContainer_SupportsLimitedDiscovery
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6AF55D45-38DB-4495-ACB0-D4728A3B8314}, 7

    //  Indicates if the Device Association Endpoint Container Supports Limited Discovery
    PKEY_Devices_AepContainer_SupportsLimitedDiscovery: TPROPERTYKEY = (fmtid: '{6AF55D45-38DB-4495-ACB0-D4728A3B8314}'; pid: 7);

    //  Name:     System.Devices.AepContainer.SupportsNetworking -- PKEY_Devices_AepContainer_SupportsNetworking
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6AF55D45-38DB-4495-ACB0-D4728A3B8314}, 9

    //  Indicates if the Device Association Endpoint Container Supports SupportsNetworking
    PKEY_Devices_AepContainer_SupportsNetworking: TPROPERTYKEY = (fmtid: '{6AF55D45-38DB-4495-ACB0-D4728A3B8314}'; pid: 9);

    //  Name:     System.Devices.AepContainer.SupportsObjectTransfer -- PKEY_Devices_AepContainer_SupportsObjectTransfer
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6AF55D45-38DB-4495-ACB0-D4728A3B8314}, 12

    //  Indicates if the Device Association Endpoint Container Supports Object Transfer
    PKEY_Devices_AepContainer_SupportsObjectTransfer: TPROPERTYKEY = (fmtid: '{6AF55D45-38DB-4495-ACB0-D4728A3B8314}'; pid: 12);

    //  Name:     System.Devices.AepContainer.SupportsPositioning -- PKEY_Devices_AepContainer_SupportsPositioning
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6AF55D45-38DB-4495-ACB0-D4728A3B8314}, 8

    //  Indicates if the Device Association Endpoint Container Supports Positioning
    PKEY_Devices_AepContainer_SupportsPositioning: TPROPERTYKEY = (fmtid: '{6AF55D45-38DB-4495-ACB0-D4728A3B8314}'; pid: 8);

    //  Name:     System.Devices.AepContainer.SupportsRendering -- PKEY_Devices_AepContainer_SupportsRendering
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6AF55D45-38DB-4495-ACB0-D4728A3B8314}, 10

    //  Indicates if the Device Association Endpoint Container Supports Rendering
    PKEY_Devices_AepContainer_SupportsRendering: TPROPERTYKEY = (fmtid: '{6AF55D45-38DB-4495-ACB0-D4728A3B8314}'; pid: 10);

    //  Name:     System.Devices.AepContainer.SupportsTelephony -- PKEY_Devices_AepContainer_SupportsTelephony
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6AF55D45-38DB-4495-ACB0-D4728A3B8314}, 13

    //  Indicates if the Device Association Endpoint Container Supports Telephony
    PKEY_Devices_AepContainer_SupportsTelephony: TPROPERTYKEY = (fmtid: '{6AF55D45-38DB-4495-ACB0-D4728A3B8314}'; pid: 13);

    //  Name:     System.Devices.AepContainer.SupportsVideo -- PKEY_Devices_AepContainer_SupportsVideo
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6AF55D45-38DB-4495-ACB0-D4728A3B8314}, 3

    //  Indicates if the Device Association Endpoint Container Supports Video Casting
    PKEY_Devices_AepContainer_SupportsVideo: TPROPERTYKEY = (fmtid: '{6AF55D45-38DB-4495-ACB0-D4728A3B8314}'; pid: 3);

    //  Name:     System.Devices.AepService.AepId -- PKEY_Devices_AepService_AepId
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9C141A9-1B4C-4F17-A9D1-F298538CADB8}, 6

    //  Device Association Endpoint Service's Parent AEP Id
    PKEY_Devices_AepService_AepId: TPROPERTYKEY = (fmtid: '{C9C141A9-1B4C-4F17-A9D1-F298538CADB8}'; pid: 6);

    //  Name:     System.Devices.AepService.Bluetooth.CacheMode -- PKEY_Devices_AepService_Bluetooth_CacheMode
    //  Type:     Byte -- VT_UI1
    //  FormatID: {9744311E-7951-4B2E-B6F0-ECB293CAC119}, 5

    //  Bluetooth caching mode for the query.
    PKEY_Devices_AepService_Bluetooth_CacheMode: TPROPERTYKEY = (fmtid: '{9744311E-7951-4B2E-B6F0-ECB293CAC119}'; pid: 5);

    // Possible discrete values for PKEY_Devices_AepService_Bluetooth_CacheMode are:
    BLUETOOTH_CACHE_MODE_CACHED = 0;
    BLUETOOTH_CACHED_MODE_UNCACHED = 1;

    //  Name:     System.Devices.AepService.Bluetooth.ServiceGuid -- PKEY_Devices_AepService_Bluetooth_ServiceGuid
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {A399AAC7-C265-474E-B073-FFCE57721716}, 2

    //  Bluetooth service GUID.
    PKEY_Devices_AepService_Bluetooth_ServiceGuid: TPROPERTYKEY = (fmtid: '{A399AAC7-C265-474E-B073-FFCE57721716}'; pid: 2);

    //  Name:     System.Devices.AepService.Bluetooth.TargetDevice -- PKEY_Devices_AepService_Bluetooth_TargetDevice
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: {9744311E-7951-4B2E-B6F0-ECB293CAC119}, 6

    //  Bluetooth parent device for the query.  Required for uncached queries.
    PKEY_Devices_AepService_Bluetooth_TargetDevice: TPROPERTYKEY = (fmtid: '{9744311E-7951-4B2E-B6F0-ECB293CAC119}'; pid: 6);

    //  Name:     System.Devices.AepService.ContainerId -- PKEY_Devices_AepService_ContainerId
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {71724756-3E74-4432-9B59-E7B2F668A593}, 4

    //  Device Association Endpoint Service's Parent Container Id
    PKEY_Devices_AepService_ContainerId: TPROPERTYKEY = (fmtid: '{71724756-3E74-4432-9B59-E7B2F668A593}'; pid: 4);

    //  Name:     System.Devices.AepService.FriendlyName -- PKEY_Devices_AepService_FriendlyName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {71724756-3E74-4432-9B59-E7B2F668A593}, 2

    //  Device Association Endpoint Service Friendly Name
    PKEY_Devices_AepService_FriendlyName: TPROPERTYKEY = (fmtid: '{71724756-3E74-4432-9B59-E7B2F668A593}'; pid: 2);

    //  Name:     System.Devices.AepService.IoT.ServiceInterfaces -- PKEY_Devices_AepService_IoT_ServiceInterfaces
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {79D94E82-4D79-45AA-821A-74858B4E4CA6}, 2

    //  List of interfaces that are available for this service.
    PKEY_Devices_AepService_IoT_ServiceInterfaces: TPROPERTYKEY = (fmtid: '{79D94E82-4D79-45AA-821A-74858B4E4CA6}'; pid: 2);

    //  Name:     System.Devices.AepService.ParentAepIsPaired -- PKEY_Devices_AepService_ParentAepIsPaired
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {C9C141A9-1B4C-4F17-A9D1-F298538CADB8}, 7

    //  Whether the parent Device Association Endpoint is paired with the system or not
    PKEY_Devices_AepService_ParentAepIsPaired: TPROPERTYKEY = (fmtid: '{C9C141A9-1B4C-4F17-A9D1-F298538CADB8}'; pid: 7);

    //  Name:     System.Devices.AepService.ProtocolId -- PKEY_Devices_AepService_ProtocolId
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {C9C141A9-1B4C-4F17-A9D1-F298538CADB8}, 5

    //  Identity of the protocol this Device Association Endpoint Service was discovered over
    PKEY_Devices_AepService_ProtocolId: TPROPERTYKEY = (fmtid: '{C9C141A9-1B4C-4F17-A9D1-F298538CADB8}'; pid: 5);

    //  Name:     System.Devices.AepService.ServiceClassId -- PKEY_Devices_AepService_ServiceClassId
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {71724756-3E74-4432-9B59-E7B2F668A593}, 3

    //  Identity of the service this Device Association Endpoint Service represents
    PKEY_Devices_AepService_ServiceClassId: TPROPERTYKEY = (fmtid: '{71724756-3E74-4432-9B59-E7B2F668A593}'; pid: 3);

    //  Name:     System.Devices.AepService.ServiceId -- PKEY_Devices_AepService_ServiceId
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9C141A9-1B4C-4F17-A9D1-F298538CADB8}, 2

    //  Device Association Endpoint Service's Id
    PKEY_Devices_AepService_ServiceId: TPROPERTYKEY = (fmtid: '{C9C141A9-1B4C-4F17-A9D1-F298538CADB8}'; pid: 2);

    //  Name:     System.Devices.AppPackageFamilyName -- PKEY_Devices_AppPackageFamilyName
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {51236583-0C4A-4FE8-B81F-166AEC13F510}, 100

    //  The package family name registered as the app for this device.
    PKEY_Devices_AppPackageFamilyName: TPROPERTYKEY = (fmtid: '{51236583-0C4A-4FE8-B81F-166AEC13F510}'; pid: 100);

    //  Name:     System.Devices.AudioDevice.Microphone.IsFarField -- PKEY_Devices_AudioDevice_Microphone_IsFarField
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {8943B373-388C-4395-B557-BC6DBAFFAFDB}, 6

    //  Far field capability of the microphone. If VARIANT_TRUE the microphone element will detect far field sound.
    PKEY_Devices_AudioDevice_Microphone_IsFarField: TPROPERTYKEY = (fmtid: '{8943B373-388C-4395-B557-BC6DBAFFAFDB}'; pid: 6);

    //  Name:     System.Devices.AudioDevice.Microphone.SensitivityInDbfs -- PKEY_Devices_AudioDevice_Microphone_SensitivityInDbfs
    //  Type:     Double -- VT_R8
    //  FormatID: {8943B373-388C-4395-B557-BC6DBAFFAFDB}, 3

    //  Sensitivity information in dBFS for a microphone device.
    PKEY_Devices_AudioDevice_Microphone_SensitivityInDbfs: TPROPERTYKEY = (fmtid: '{8943B373-388C-4395-B557-BC6DBAFFAFDB}'; pid: 3);

    //  Name:     System.Devices.AudioDevice.Microphone.SensitivityInDbfs2 -- PKEY_Devices_AudioDevice_Microphone_SensitivityInDbfs2
    //  Type:     Double -- VT_R8
    //  FormatID: {8943B373-388C-4395-B557-BC6DBAFFAFDB}, 5

    //  Sensitivity information in dBFS for a microphone device, measured after fixed hardware gain (if available). Assumes 0dB software gain
    PKEY_Devices_AudioDevice_Microphone_SensitivityInDbfs2: TPROPERTYKEY = (fmtid: '{8943B373-388C-4395-B557-BC6DBAFFAFDB}'; pid: 5);

    //  Name:     System.Devices.AudioDevice.Microphone.SignalToNoiseRatioInDb -- PKEY_Devices_AudioDevice_Microphone_SignalToNoiseRatioInDb
    //  Type:     Double -- VT_R8
    //  FormatID: {8943B373-388C-4395-B557-BC6DBAFFAFDB}, 4

    //  Signal to noise ratio information in dB for a microphone device.
    PKEY_Devices_AudioDevice_Microphone_SignalToNoiseRatioInDb: TPROPERTYKEY = (fmtid: '{8943B373-388C-4395-B557-BC6DBAFFAFDB}'; pid: 4);

    //  Name:     System.Devices.AudioDevice.RawProcessingSupported -- PKEY_Devices_AudioDevice_RawProcessingSupported
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {8943B373-388C-4395-B557-BC6DBAFFAFDB}, 2

    //  Raw processing mode support for the audio device. If VARIANT_TRUE the device supports raw processing mode.
    PKEY_Devices_AudioDevice_RawProcessingSupported: TPROPERTYKEY = (fmtid: '{8943B373-388C-4395-B557-BC6DBAFFAFDB}'; pid: 2);

    //  Name:     System.Devices.AudioDevice.SpeechProcessingSupported -- PKEY_Devices_AudioDevice_SpeechProcessingSupported
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {FB1DE864-E06D-47F4-82A6-8A0AEF44493C}, 2

    //  Speech mode support for the audio device. If VARIANT_TRUE the device supports speech mode.
    PKEY_Devices_AudioDevice_SpeechProcessingSupported: TPROPERTYKEY = (fmtid: '{FB1DE864-E06D-47F4-82A6-8A0AEF44493C}'; pid: 2);

    //  Name:     System.Devices.BatteryLife -- PKEY_Devices_BatteryLife
    //  Type:     Byte -- VT_UI1
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 10

    //  Remaining battery life of the device as an integer between 0 and 100 percent.
    PKEY_Devices_BatteryLife: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 10);

    //  Name:     System.Devices.BatteryPlusCharging -- PKEY_Devices_BatteryPlusCharging
    //  Type:     Byte -- VT_UI1
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 22

    //  Remaining battery life of the device as an integer between 0 and 100 percent and the device's charging state.
    PKEY_Devices_BatteryPlusCharging: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 22);

    //  Name:     System.Devices.BatteryPlusChargingText -- PKEY_Devices_BatteryPlusChargingText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 23

    //  Remaining battery life of the device and the device's charging state as a string.
    PKEY_Devices_BatteryPlusChargingText: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 23);

    //  Name:     System.Devices.Category -- PKEY_Devices_Category
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 91

    //  Singular form of device category.
    PKEY_Devices_Category: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 91);

    //  Name:     System.Devices.CategoryGroup -- PKEY_Devices_CategoryGroup
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 94

    //  Description of the category group the device belong to.
    PKEY_Devices_CategoryGroup: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 94);

    //  Name:     System.Devices.CategoryIds -- PKEY_Devices_CategoryIds
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 90

    //  Indicates the actual raw category
    PKEY_Devices_CategoryIds: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 90);

    //  Name:     System.Devices.CategoryPlural -- PKEY_Devices_CategoryPlural
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 92

    //  Plural form of device category.
    PKEY_Devices_CategoryPlural: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 92);

    //  Name:     System.Devices.ChallengeAep -- PKEY_Devices_ChallengeAep
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {0774315E-B714-48EC-8DE8-8125C077AC11}, 2

    //  Enable or Disable device presence challenging behavior for AEPs
    PKEY_Devices_ChallengeAep: TPROPERTYKEY = (fmtid: '{0774315E-B714-48EC-8DE8-8125C077AC11}'; pid: 2);

    //  Name:     System.Devices.ChargingState -- PKEY_Devices_ChargingState
    //  Type:     Byte -- VT_UI1
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 11

    //  Boolean value representing if the device is currently charging.
    PKEY_Devices_ChargingState: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 11);

    //  Name:     System.Devices.Children -- PKEY_Devices_Children
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {4340A6C5-93FA-4706-972C-7B648008A5A7}, 9

    //  Device instance ids of children of this device.
    PKEY_Devices_Children: TPROPERTYKEY = (fmtid: '{4340A6C5-93FA-4706-972C-7B648008A5A7}'; pid: 9);

    //  Name:     System.Devices.ClassGuid -- PKEY_Devices_ClassGuid
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {A45C254E-DF1C-4EFD-8020-67D146A850E0}, 10

    //  Device Class Guid.
    PKEY_Devices_ClassGuid: TPROPERTYKEY = (fmtid: '{A45C254E-DF1C-4EFD-8020-67D146A850E0}'; pid: 10);

    //  Name:     System.Devices.CompatibleIds -- PKEY_Devices_CompatibleIds
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {A45C254E-DF1C-4EFD-8020-67D146A850E0}, 4

    //  Compatible Ids.
    PKEY_Devices_CompatibleIds: TPROPERTYKEY = (fmtid: '{A45C254E-DF1C-4EFD-8020-67D146A850E0}'; pid: 4);

    //  Name:     System.Devices.Connected -- PKEY_Devices_Connected
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 55

    //  Device connection state. If VARIANT_TRUE, indicates the device is currently connected to the computer.
    PKEY_Devices_Connected: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 55);

    //  Name:     System.Devices.ContainerId -- PKEY_Devices_ContainerId
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {8C7ED206-3F8A-4827-B3AB-AE9E1FAEFC6C}, 2

    //  Device container ID.
    PKEY_Devices_ContainerId: TPROPERTYKEY = (fmtid: '{8C7ED206-3F8A-4827-B3AB-AE9E1FAEFC6C}'; pid: 2);

    //  Name:     System.Devices.DefaultTooltip -- PKEY_Devices_DefaultTooltip
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {880F70A2-6082-47AC-8AAB-A739D1A300C3}, 153

    //  Tooltip for default state
    PKEY_Devices_DefaultTooltip: TPROPERTYKEY = (fmtid: '{880F70A2-6082-47AC-8AAB-A739D1A300C3}'; pid: 153);

    //  Name:     System.Devices.DeviceCapabilities -- PKEY_Devices_DeviceCapabilities
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {A45C254E-DF1C-4EFD-8020-67D146A850E0}, 17

    //  Device Capabilities.
    PKEY_Devices_DeviceCapabilities: TPROPERTYKEY = (fmtid: '{A45C254E-DF1C-4EFD-8020-67D146A850E0}'; pid: 17);

    //  Name:     System.Devices.DeviceCharacteristics -- PKEY_Devices_DeviceCharacteristics
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {A45C254E-DF1C-4EFD-8020-67D146A850E0}, 29

    //  Device Characteristics.
    PKEY_Devices_DeviceCharacteristics: TPROPERTYKEY = (fmtid: '{A45C254E-DF1C-4EFD-8020-67D146A850E0}'; pid: 29);

    //  Name:     System.Devices.DeviceDescription1 -- PKEY_Devices_DeviceDescription1
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 81

    //  First line of descriptive text about the device.
    PKEY_Devices_DeviceDescription1: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 81);

    //  Name:     System.Devices.DeviceDescription2 -- PKEY_Devices_DeviceDescription2
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 82

    //  Second line of descriptive text about the device.
    PKEY_Devices_DeviceDescription2: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 82);

    //  Name:     System.Devices.DeviceHasProblem -- PKEY_Devices_DeviceHasProblem
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {540B947E-8B40-45BC-A8A2-6A0B894CBDA2}, 6

    //  Device has a problem.
    PKEY_Devices_DeviceHasProblem: TPROPERTYKEY = (fmtid: '{540B947E-8B40-45BC-A8A2-6A0B894CBDA2}'; pid: 6);

    //  Name:     System.Devices.DeviceInstanceId -- PKEY_Devices_DeviceInstanceId
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 256

    //  Device instance Id.
    PKEY_Devices_DeviceInstanceId: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 256);

    //  Name:     System.Devices.DeviceManufacturer -- PKEY_Devices_DeviceManufacturer
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A45C254E-DF1C-4EFD-8020-67D146A850E0}, 13

    //  Device manufacturer. Property on device object
    PKEY_Devices_DeviceManufacturer: TPROPERTYKEY = (fmtid: '{A45C254E-DF1C-4EFD-8020-67D146A850E0}'; pid: 13);

    //  Name:     System.Devices.DevObjectType -- PKEY_Devices_DevObjectType
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {13673F42-A3D6-49F6-B4DA-AE46E0C5237C}, 2

    //  DevQuery Device Object Type
    PKEY_Devices_DevObjectType: TPROPERTYKEY = (fmtid: '{13673F42-A3D6-49F6-B4DA-AE46E0C5237C}'; pid: 2);

    //  Name:     System.Devices.DialProtocol.InstalledApplications -- PKEY_Devices_DialProtocol_InstalledApplications
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {6845CC72-1B71-48C3-AF86-B09171A19B14}, 3

    //  List of applications supporting DIAL protocol on the Device Association End Point
    PKEY_Devices_DialProtocol_InstalledApplications: TPROPERTYKEY = (fmtid: '{6845CC72-1B71-48C3-AF86-B09171A19B14}'; pid: 3);

    //  Name:     System.Devices.DiscoveryMethod -- PKEY_Devices_DiscoveryMethod
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 52

    //  Device discovery method. This indicates on what transport or physical connection the device is discovered.
    PKEY_Devices_DiscoveryMethod: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 52);

    //  Name:     System.Devices.Dnssd.Domain -- PKEY_Devices_Dnssd_Domain
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {BF79C0AB-BB74-4CEE-B070-470B5AE202EA}, 3

    //  Domain portion of DNS-SD service instance name. (e.g. ".local" in "myservice._http._tcp.local")
    PKEY_Devices_Dnssd_Domain: TPROPERTYKEY = (fmtid: '{BF79C0AB-BB74-4CEE-B070-470B5AE202EA}'; pid: 3);

    //  Name:     System.Devices.Dnssd.FullName -- PKEY_Devices_Dnssd_FullName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {BF79C0AB-BB74-4CEE-B070-470B5AE202EA}, 5

    //  Complete DNS-SD service instance name, including instance, service, and domain.
    PKEY_Devices_Dnssd_FullName: TPROPERTYKEY = (fmtid: '{BF79C0AB-BB74-4CEE-B070-470B5AE202EA}'; pid: 5);

    //  Name:     System.Devices.Dnssd.HostName -- PKEY_Devices_Dnssd_HostName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {BF79C0AB-BB74-4CEE-B070-470B5AE202EA}, 7

    //  DNS name of device is hosting the service.
    PKEY_Devices_Dnssd_HostName: TPROPERTYKEY = (fmtid: '{BF79C0AB-BB74-4CEE-B070-470B5AE202EA}'; pid: 7);

    //  Name:     System.Devices.Dnssd.InstanceName -- PKEY_Devices_Dnssd_InstanceName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {BF79C0AB-BB74-4CEE-B070-470B5AE202EA}, 4

    //  Instance portion of DNS-SD service instance name.(e.g. "myservice" in "myservice._http._tcp.local")
    PKEY_Devices_Dnssd_InstanceName: TPROPERTYKEY = (fmtid: '{BF79C0AB-BB74-4CEE-B070-470B5AE202EA}'; pid: 4);

    //  Name:     System.Devices.Dnssd.NetworkAdapterId -- PKEY_Devices_Dnssd_NetworkAdapterId
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {BF79C0AB-BB74-4CEE-B070-470B5AE202EA}, 11

    //  GUID for the network adapter on which to search for a service.
    PKEY_Devices_Dnssd_NetworkAdapterId: TPROPERTYKEY = (fmtid: '{BF79C0AB-BB74-4CEE-B070-470B5AE202EA}'; pid: 11);

    //  Name:     System.Devices.Dnssd.PortNumber -- PKEY_Devices_Dnssd_PortNumber
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {BF79C0AB-BB74-4CEE-B070-470B5AE202EA}, 12

    //  Port number on which the service is listening.
    PKEY_Devices_Dnssd_PortNumber: TPROPERTYKEY = (fmtid: '{BF79C0AB-BB74-4CEE-B070-470B5AE202EA}'; pid: 12);

    //  Name:     System.Devices.Dnssd.Priority -- PKEY_Devices_Dnssd_Priority
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {BF79C0AB-BB74-4CEE-B070-470B5AE202EA}, 9

    //  SRV record priority field.  Not usually used.
    PKEY_Devices_Dnssd_Priority: TPROPERTYKEY = (fmtid: '{BF79C0AB-BB74-4CEE-B070-470B5AE202EA}'; pid: 9);

    //  Name:     System.Devices.Dnssd.ServiceName -- PKEY_Devices_Dnssd_ServiceName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {BF79C0AB-BB74-4CEE-B070-470B5AE202EA}, 2

    //  Service type portion of DNS-SD service instance name. (e.g. "_http._tcp" in "myservice._http._tcp.local")
    PKEY_Devices_Dnssd_ServiceName: TPROPERTYKEY = (fmtid: '{BF79C0AB-BB74-4CEE-B070-470B5AE202EA}'; pid: 2);

    //  Name:     System.Devices.Dnssd.TextAttributes -- PKEY_Devices_Dnssd_TextAttributes
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {BF79C0AB-BB74-4CEE-B070-470B5AE202EA}, 6

    //  Text data associated with the service instance.  Each string is typically a key-value pair, separated by "=".
    PKEY_Devices_Dnssd_TextAttributes: TPROPERTYKEY = (fmtid: '{BF79C0AB-BB74-4CEE-B070-470B5AE202EA}'; pid: 6);

    //  Name:     System.Devices.Dnssd.Ttl -- PKEY_Devices_Dnssd_Ttl
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {BF79C0AB-BB74-4CEE-B070-470B5AE202EA}, 10

    //  SRV record Time-To-Live field.  Not usually used.
    PKEY_Devices_Dnssd_Ttl: TPROPERTYKEY = (fmtid: '{BF79C0AB-BB74-4CEE-B070-470B5AE202EA}'; pid: 10);

    //  Name:     System.Devices.Dnssd.Weight -- PKEY_Devices_Dnssd_Weight
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {BF79C0AB-BB74-4CEE-B070-470B5AE202EA}, 8

    //  SRV record weight field.  Not usually used.
    PKEY_Devices_Dnssd_Weight: TPROPERTYKEY = (fmtid: '{BF79C0AB-BB74-4CEE-B070-470B5AE202EA}'; pid: 8);

    //  Name:     System.Devices.FriendlyName -- PKEY_Devices_FriendlyName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {656A3BB3-ECC0-43FD-8477-4AE0404A96CD}, 12288

    //  Device friendly name.
    PKEY_Devices_FriendlyName: TPROPERTYKEY = (fmtid: '{656A3BB3-ECC0-43FD-8477-4AE0404A96CD}'; pid: 12288);

    //  Name:     System.Devices.FunctionPaths -- PKEY_Devices_FunctionPaths
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {D08DD4C0-3A9E-462E-8290-7B636B2576B9}, 3

    //  Available functions for this device.
    PKEY_Devices_FunctionPaths: TPROPERTYKEY = (fmtid: '{D08DD4C0-3A9E-462E-8290-7B636B2576B9}'; pid: 3);

    //  Name:     System.Devices.GlyphIcon -- PKEY_Devices_GlyphIcon
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {51236583-0C4A-4FE8-B81F-166AEC13F510}, 123

    //  Glyph Icon Path.
    PKEY_Devices_GlyphIcon: TPROPERTYKEY = (fmtid: '{51236583-0C4A-4FE8-B81F-166AEC13F510}'; pid: 123);

    //  Name:     System.Devices.HardwareIds -- PKEY_Devices_HardwareIds
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {A45C254E-DF1C-4EFD-8020-67D146A850E0}, 3

    //  Hardware Ids.
    PKEY_Devices_HardwareIds: TPROPERTYKEY = (fmtid: '{A45C254E-DF1C-4EFD-8020-67D146A850E0}'; pid: 3);

    //  Name:     System.Devices.Icon -- PKEY_Devices_Icon
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 57

    //  Icon Path.
    PKEY_Devices_Icon: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 57);

    //  Name:     System.Devices.InLocalMachineContainer -- PKEY_Devices_InLocalMachineContainer
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {8C7ED206-3F8A-4827-B3AB-AE9E1FAEFC6C}, 4

    //  Device is in the local machine container.
    PKEY_Devices_InLocalMachineContainer: TPROPERTYKEY = (fmtid: '{8C7ED206-3F8A-4827-B3AB-AE9E1FAEFC6C}'; pid: 4);

    //  Name:     System.Devices.InterfaceClassGuid -- PKEY_Devices_InterfaceClassGuid
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {026E516E-B814-414B-83CD-856D6FEF4822}, 4

    //  Interface Class Guid.
    PKEY_Devices_InterfaceClassGuid: TPROPERTYKEY = (fmtid: '{026E516E-B814-414B-83CD-856D6FEF4822}'; pid: 4);

    //  Name:     System.Devices.InterfaceEnabled -- PKEY_Devices_InterfaceEnabled
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {026E516E-B814-414B-83CD-856D6FEF4822}, 3

    //  Indicates if the interface is enabled or not.
    PKEY_Devices_InterfaceEnabled: TPROPERTYKEY = (fmtid: '{026E516E-B814-414B-83CD-856D6FEF4822}'; pid: 3);

    //  Name:     System.Devices.InterfacePaths -- PKEY_Devices_InterfacePaths
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {D08DD4C0-3A9E-462E-8290-7B636B2576B9}, 2

    //  Available interfaces for this device.
    PKEY_Devices_InterfacePaths: TPROPERTYKEY = (fmtid: '{D08DD4C0-3A9E-462E-8290-7B636B2576B9}'; pid: 2);

    //  Name:     System.Devices.IpAddress -- PKEY_Devices_IpAddress
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {656A3BB3-ECC0-43FD-8477-4AE0404A96CD}, 12297

    //  IP address of the device.
    PKEY_Devices_IpAddress: TPROPERTYKEY = (fmtid: '{656A3BB3-ECC0-43FD-8477-4AE0404A96CD}'; pid: 12297);

    //  Name:     System.Devices.IsDefault -- PKEY_Devices_IsDefault
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 86

    //  If VARIANT_TRUE, the device is the default device.
    PKEY_Devices_IsDefault: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 86);

    //  Name:     System.Devices.IsNetworkConnected -- PKEY_Devices_IsNetworkConnected
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 85

    //  If VARIANT_TRUE, the device is a network connected device.
    PKEY_Devices_IsNetworkConnected: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 85);

    //  Name:     System.Devices.IsShared -- PKEY_Devices_IsShared
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 84

    //  If VARIANT_TRUE, the device is shared.
    PKEY_Devices_IsShared: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 84);

    //  Name:     System.Devices.IsSoftwareInstalling -- PKEY_Devices_IsSoftwareInstalling
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {83DA6326-97A6-4088-9453-A1923F573B29}, 9

    //  If VARIANT_TRUE, the device installer is currently installing software.
    PKEY_Devices_IsSoftwareInstalling: TPROPERTYKEY = (fmtid: '{83DA6326-97A6-4088-9453-A1923F573B29}'; pid: 9);

    //  Name:     System.Devices.LaunchDeviceStageFromExplorer -- PKEY_Devices_LaunchDeviceStageFromExplorer
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 77

    //  Indicates whether to launch Device Stage or not
    PKEY_Devices_LaunchDeviceStageFromExplorer: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 77);

    //  Name:     System.Devices.LocalMachine -- PKEY_Devices_LocalMachine
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 70

    //  If VARIANT_TRUE, the device container represents the local machine itself.
    PKEY_Devices_LocalMachine: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 70);

    //  Name:     System.Devices.LocationPaths -- PKEY_Devices_LocationPaths
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {A45C254E-DF1C-4EFD-8020-67D146A850E0}, 37

    //  Device LocationPaths.
    PKEY_Devices_LocationPaths: TPROPERTYKEY = (fmtid: '{A45C254E-DF1C-4EFD-8020-67D146A850E0}'; pid: 37);

    //  Name:     System.Devices.Manufacturer -- PKEY_Devices_Manufacturer
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {656A3BB3-ECC0-43FD-8477-4AE0404A96CD}, 8192

    //  Device manufacturer.
    PKEY_Devices_Manufacturer: TPROPERTYKEY = (fmtid: '{656A3BB3-ECC0-43FD-8477-4AE0404A96CD}'; pid: 8192);

    //  Name:     System.Devices.MetadataPath -- PKEY_Devices_MetadataPath
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 71

    //  Path to metadata for the device.
    PKEY_Devices_MetadataPath: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 71);

    //  Name:     System.Devices.MicrophoneArray.Geometry -- PKEY_Devices_MicrophoneArray_Geometry
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: {A1829EA2-27EB-459E-935D-B2FAD7B07762}, 2

    //  Geometry data for the microphone array.
    PKEY_Devices_MicrophoneArray_Geometry: TPROPERTYKEY = (fmtid: '{A1829EA2-27EB-459E-935D-B2FAD7B07762}'; pid: 2);

    //  Name:     System.Devices.MissedCalls -- PKEY_Devices_MissedCalls
    //  Type:     Byte -- VT_UI1
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 5

    //  Number of missed calls on the device.
    PKEY_Devices_MissedCalls: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 5);

    //  Name:     System.Devices.ModelId -- PKEY_Devices_ModelId
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {80D81EA6-7473-4B0C-8216-EFC11A2C4C8B}, 2

    //  Model Id
    PKEY_Devices_ModelId: TPROPERTYKEY = (fmtid: '{80D81EA6-7473-4B0C-8216-EFC11A2C4C8B}'; pid: 2);

    //  Name:     System.Devices.ModelName -- PKEY_Devices_ModelName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {656A3BB3-ECC0-43FD-8477-4AE0404A96CD}, 8194

    //  Model name of the device.
    PKEY_Devices_ModelName: TPROPERTYKEY = (fmtid: '{656A3BB3-ECC0-43FD-8477-4AE0404A96CD}'; pid: 8194);

    //  Name:     System.Devices.ModelNumber -- PKEY_Devices_ModelNumber
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {656A3BB3-ECC0-43FD-8477-4AE0404A96CD}, 8195

    //  Model number of the device.
    PKEY_Devices_ModelNumber: TPROPERTYKEY = (fmtid: '{656A3BB3-ECC0-43FD-8477-4AE0404A96CD}'; pid: 8195);

    //  Name:     System.Devices.NetworkedTooltip -- PKEY_Devices_NetworkedTooltip
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {880F70A2-6082-47AC-8AAB-A739D1A300C3}, 152

    //  Tooltip for connection state
    PKEY_Devices_NetworkedTooltip: TPROPERTYKEY = (fmtid: '{880F70A2-6082-47AC-8AAB-A739D1A300C3}'; pid: 152);

    //  Name:     System.Devices.NetworkName -- PKEY_Devices_NetworkName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 7

    //  Name of the device's network.
    PKEY_Devices_NetworkName: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 7);

    //  Name:     System.Devices.NetworkType -- PKEY_Devices_NetworkType
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 8

    //  String representing the type of the device's network.
    PKEY_Devices_NetworkType: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 8);

    //  Name:     System.Devices.NewPictures -- PKEY_Devices_NewPictures
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 4

    //  Number of new pictures on the device.
    PKEY_Devices_NewPictures: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 4);

    //  Name:     System.Devices.Notification -- PKEY_Devices_Notification
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {06704B0C-E830-4C81-9178-91E4E95A80A0}, 3

    //  Device Notification Property.
    PKEY_Devices_Notification: TPROPERTYKEY = (fmtid: '{06704B0C-E830-4C81-9178-91E4E95A80A0}'; pid: 3);

    //  Name:     System.Devices.Notifications.LowBattery -- PKEY_Devices_Notifications_LowBattery
    //  Type:     Byte -- VT_UI1
    //  FormatID: {C4C07F2B-8524-4E66-AE3A-A6235F103BEB}, 2

    //  Device Low Battery Notification.
    PKEY_Devices_Notifications_LowBattery: TPROPERTYKEY = (fmtid: '{C4C07F2B-8524-4E66-AE3A-A6235F103BEB}'; pid: 2);

    //  Name:     System.Devices.Notifications.MissedCall -- PKEY_Devices_Notifications_MissedCall
    //  Type:     Byte -- VT_UI1
    //  FormatID: {6614EF48-4EFE-4424-9EDA-C79F404EDF3E}, 2

    //  Device Missed Call Notification.
    PKEY_Devices_Notifications_MissedCall: TPROPERTYKEY = (fmtid: '{6614EF48-4EFE-4424-9EDA-C79F404EDF3E}'; pid: 2);

    //  Name:     System.Devices.Notifications.NewMessage -- PKEY_Devices_Notifications_NewMessage
    //  Type:     Byte -- VT_UI1
    //  FormatID: {2BE9260A-2012-4742-A555-F41B638B7DCB}, 2

    //  Device New Message Notification.
    PKEY_Devices_Notifications_NewMessage: TPROPERTYKEY = (fmtid: '{2BE9260A-2012-4742-A555-F41B638B7DCB}'; pid: 2);

    //  Name:     System.Devices.Notifications.NewVoicemail -- PKEY_Devices_Notifications_NewVoicemail
    //  Type:     Byte -- VT_UI1
    //  FormatID: {59569556-0A08-4212-95B9-FAE2AD6413DB}, 2

    //  Device Voicemail Notification.
    PKEY_Devices_Notifications_NewVoicemail: TPROPERTYKEY = (fmtid: '{59569556-0A08-4212-95B9-FAE2AD6413DB}'; pid: 2);

    //  Name:     System.Devices.Notifications.StorageFull -- PKEY_Devices_Notifications_StorageFull
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: {A0E00EE1-F0C7-4D41-B8E7-26A7BD8D38B0}, 2

    //  Device Storage Full Notification.
    PKEY_Devices_Notifications_StorageFull: TPROPERTYKEY = (fmtid: '{A0E00EE1-F0C7-4D41-B8E7-26A7BD8D38B0}'; pid: 2);

    //  Name:     System.Devices.Notifications.StorageFullLinkText -- PKEY_Devices_Notifications_StorageFullLinkText
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: {A0E00EE1-F0C7-4D41-B8E7-26A7BD8D38B0}, 3

    //  Link Text for the Device Storage Full Notification.
    PKEY_Devices_Notifications_StorageFullLinkText: TPROPERTYKEY = (fmtid: '{A0E00EE1-F0C7-4D41-B8E7-26A7BD8D38B0}'; pid: 3);

    //  Name:     System.Devices.NotificationStore -- PKEY_Devices_NotificationStore
    //  Type:     Object -- VT_UNKNOWN
    //  FormatID: {06704B0C-E830-4C81-9178-91E4E95A80A0}, 2

    //  Device Notification Store.
    PKEY_Devices_NotificationStore: TPROPERTYKEY = (fmtid: '{06704B0C-E830-4C81-9178-91E4E95A80A0}'; pid: 2);

    //  Name:     System.Devices.NotWorkingProperly -- PKEY_Devices_NotWorkingProperly
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 83

    //  If VARIANT_TRUE, the device is not working properly.
    PKEY_Devices_NotWorkingProperly: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 83);

    //  Name:     System.Devices.Paired -- PKEY_Devices_Paired
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {78C34FC8-104A-4ACA-9EA4-524D52996E57}, 56

    //  Device paired state. If VARIANT_TRUE, indicates the device is not paired with the computer.
    PKEY_Devices_Paired: TPROPERTYKEY = (fmtid: '{78C34FC8-104A-4ACA-9EA4-524D52996E57}'; pid: 56);

    //  Name:     System.Devices.Panel.PanelGroup -- PKEY_Devices_Panel_PanelGroup
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {8DBC9C86-97A9-4BFF-9BC6-BFE95D3E6DAD}, 3

    //  The group that this panel belongs to
    PKEY_Devices_Panel_PanelGroup: TPROPERTYKEY = (fmtid: '{8DBC9C86-97A9-4BFF-9BC6-BFE95D3E6DAD}'; pid: 3);

    //  Name:     System.Devices.Panel.PanelId -- PKEY_Devices_Panel_PanelId
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {8DBC9C86-97A9-4BFF-9BC6-BFE95D3E6DAD}, 2

    //  Identity of the Device Panel
    PKEY_Devices_Panel_PanelId: TPROPERTYKEY = (fmtid: '{8DBC9C86-97A9-4BFF-9BC6-BFE95D3E6DAD}'; pid: 2);

    //  Name:     System.Devices.Parent -- PKEY_Devices_Parent
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {4340A6C5-93FA-4706-972C-7B648008A5A7}, 8

    //  Parent device.
    PKEY_Devices_Parent: TPROPERTYKEY = (fmtid: '{4340A6C5-93FA-4706-972C-7B648008A5A7}'; pid: 8);

    //  Name:     System.Devices.PhoneLineTransportDevice.Connected -- PKEY_Devices_PhoneLineTransportDevice_Connected
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {AECF2FE8-1D00-4FEE-8A6D-A70D719B772B}, 2

    //  Connection status of a PhoneLineTransportDevice.
    PKEY_Devices_PhoneLineTransportDevice_Connected: TPROPERTYKEY = (fmtid: '{AECF2FE8-1D00-4FEE-8A6D-A70D719B772B}'; pid: 2);

    //  Name:     System.Devices.PhysicalDeviceLocation -- PKEY_Devices_PhysicalDeviceLocation
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: {540B947E-8B40-45BC-A8A2-6A0B894CBDA2}, 9

    //  ACPI _PLD data for the device.
    PKEY_Devices_PhysicalDeviceLocation: TPROPERTYKEY = (fmtid: '{540B947E-8B40-45BC-A8A2-6A0B894CBDA2}'; pid: 9);

    //  Name:     System.Devices.PlaybackPositionPercent -- PKEY_Devices_PlaybackPositionPercent
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {3633DE59-6825-4381-A49B-9F6BA13A1471}, 5

    //  Device playback position as a percent.
    PKEY_Devices_PlaybackPositionPercent: TPROPERTYKEY = (fmtid: '{3633DE59-6825-4381-A49B-9F6BA13A1471}'; pid: 5);

    //  Name:     System.Devices.PlaybackState -- PKEY_Devices_PlaybackState
    //  Type:     Byte -- VT_UI1
    //  FormatID: {3633DE59-6825-4381-A49B-9F6BA13A1471}, 2

    //  Device playback state.
    PKEY_Devices_PlaybackState: TPROPERTYKEY = (fmtid: '{3633DE59-6825-4381-A49B-9F6BA13A1471}'; pid: 2);

    // Possible discrete values for PKEY_Devices_PlaybackState are:
    PLAYBACKSTATE_UNKNOWN = 0;
    PLAYBACKSTATE_STOPPED = 1;
    PLAYBACKSTATE_PLAYING = 2;
    PLAYBACKSTATE_TRANSITIONING = 3;
    PLAYBACKSTATE_PAUSED = 4;
    PLAYBACKSTATE_RECORDINGPAUSED = 5;
    PLAYBACKSTATE_RECORDING = 6;
    PLAYBACKSTATE_NOMEDIA = 7;

    //  Name:     System.Devices.PlaybackTitle -- PKEY_Devices_PlaybackTitle
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {3633DE59-6825-4381-A49B-9F6BA13A1471}, 3

    //  Device current playback title.
    PKEY_Devices_PlaybackTitle: TPROPERTYKEY = (fmtid: '{3633DE59-6825-4381-A49B-9F6BA13A1471}'; pid: 3);

    //  Name:     System.Devices.Present -- PKEY_Devices_Present
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {540B947E-8B40-45BC-A8A2-6A0B894CBDA2}, 5

    //  Device is present.
    PKEY_Devices_Present: TPROPERTYKEY = (fmtid: '{540B947E-8B40-45BC-A8A2-6A0B894CBDA2}'; pid: 5);

    //  Name:     System.Devices.PresentationUrl -- PKEY_Devices_PresentationUrl
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {656A3BB3-ECC0-43FD-8477-4AE0404A96CD}, 8198

    //  URL of a human readable webpage on the device.
    PKEY_Devices_PresentationUrl: TPROPERTYKEY = (fmtid: '{656A3BB3-ECC0-43FD-8477-4AE0404A96CD}'; pid: 8198);

    //  Name:     System.Devices.PrimaryCategory -- PKEY_Devices_PrimaryCategory
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {D08DD4C0-3A9E-462E-8290-7B636B2576B9}, 10

    //  Primary category group for this device.
    PKEY_Devices_PrimaryCategory: TPROPERTYKEY = (fmtid: '{D08DD4C0-3A9E-462E-8290-7B636B2576B9}'; pid: 10);

    //  Name:     System.Devices.RemainingDuration -- PKEY_Devices_RemainingDuration
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: {3633DE59-6825-4381-A49B-9F6BA13A1471}, 4

    //  Remaining playing time in 100ns units.
    PKEY_Devices_RemainingDuration: TPROPERTYKEY = (fmtid: '{3633DE59-6825-4381-A49B-9F6BA13A1471}'; pid: 4);

    //  Name:     System.Devices.RestrictedInterface -- PKEY_Devices_RestrictedInterface
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {026E516E-B814-414B-83CD-856D6FEF4822}, 6

    //  Indicates if the interface is restricted.
    PKEY_Devices_RestrictedInterface: TPROPERTYKEY = (fmtid: '{026E516E-B814-414B-83CD-856D6FEF4822}'; pid: 6);

    //  Name:     System.Devices.Roaming -- PKEY_Devices_Roaming
    //  Type:     Byte -- VT_UI1
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 9

    //  Status indicator used to indicate if the device is roaming.
    PKEY_Devices_Roaming: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 9);

    //  Name:     System.Devices.SafeRemovalRequired -- PKEY_Devices_SafeRemovalRequired
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {AFD97640-86A3-4210-B67C-289C41AABE55}, 2

    //  Indicates if a device requires safe removal or not
    PKEY_Devices_SafeRemovalRequired: TPROPERTYKEY = (fmtid: '{AFD97640-86A3-4210-B67C-289C41AABE55}'; pid: 2);

    //  Name:     System.Devices.SchematicName -- PKEY_Devices_SchematicName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {026E516E-B814-414B-83CD-856D6FEF4822}, 9

    //  Interface name for statically connected devices based on system schematics.
    PKEY_Devices_SchematicName: TPROPERTYKEY = (fmtid: '{026E516E-B814-414B-83CD-856D6FEF4822}'; pid: 9);

    //  Name:     System.Devices.ServiceAddress -- PKEY_Devices_ServiceAddress
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {656A3BB3-ECC0-43FD-8477-4AE0404A96CD}, 16384

    //  Endpoint address of the device service.
    PKEY_Devices_ServiceAddress: TPROPERTYKEY = (fmtid: '{656A3BB3-ECC0-43FD-8477-4AE0404A96CD}'; pid: 16384);

    //  Name:     System.Devices.ServiceId -- PKEY_Devices_ServiceId
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {656A3BB3-ECC0-43FD-8477-4AE0404A96CD}, 16385

    //  Identifier of the device service.
    PKEY_Devices_ServiceId: TPROPERTYKEY = (fmtid: '{656A3BB3-ECC0-43FD-8477-4AE0404A96CD}'; pid: 16385);

    //  Name:     System.Devices.SharedTooltip -- PKEY_Devices_SharedTooltip
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {880F70A2-6082-47AC-8AAB-A739D1A300C3}, 151

    //  Tooltip for sharing state
    PKEY_Devices_SharedTooltip: TPROPERTYKEY = (fmtid: '{880F70A2-6082-47AC-8AAB-A739D1A300C3}'; pid: 151);

    //  Name:     System.Devices.SignalStrength -- PKEY_Devices_SignalStrength
    //  Type:     Byte -- VT_UI1
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 2

    //  Device signal strength.
    PKEY_Devices_SignalStrength: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 2);

    //  Name:     System.Devices.SmartCards.ReaderKind -- PKEY_Devices_SmartCards_ReaderKind
    //  Type:     Byte -- VT_UI1
    //  FormatID: {D6B5B883-18BD-4B4D-B2EC-9E38AFFEDA82}, 2

    //  Smart card reader kind.
    PKEY_Devices_SmartCards_ReaderKind: TPROPERTYKEY = (fmtid: '{D6B5B883-18BD-4B4D-B2EC-9E38AFFEDA82}'; pid: 2);

    //  Name:     System.Devices.Status -- PKEY_Devices_Status
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {D08DD4C0-3A9E-462E-8290-7B636B2576B9}, 259

    //  Array of device status strings
    PKEY_Devices_Status: TPROPERTYKEY = (fmtid: '{D08DD4C0-3A9E-462E-8290-7B636B2576B9}'; pid: 259);

    //  Name:     System.Devices.Status1 -- PKEY_Devices_Status1
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {D08DD4C0-3A9E-462E-8290-7B636B2576B9}, 257

    //  1st line of device status.
    PKEY_Devices_Status1: TPROPERTYKEY = (fmtid: '{D08DD4C0-3A9E-462E-8290-7B636B2576B9}'; pid: 257);

    //  Name:     System.Devices.Status2 -- PKEY_Devices_Status2
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {D08DD4C0-3A9E-462E-8290-7B636B2576B9}, 258

    //  2nd line of device status.
    PKEY_Devices_Status2: TPROPERTYKEY = (fmtid: '{D08DD4C0-3A9E-462E-8290-7B636B2576B9}'; pid: 258);

    //  Name:     System.Devices.StorageCapacity -- PKEY_Devices_StorageCapacity
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 12

    //  Total storage capacity of the device.
    PKEY_Devices_StorageCapacity: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 12);

    //  Name:     System.Devices.StorageFreeSpace -- PKEY_Devices_StorageFreeSpace
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 13

    //  Total free space of the storage of the device.
    PKEY_Devices_StorageFreeSpace: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 13);

    //  Name:     System.Devices.StorageFreeSpacePercent -- PKEY_Devices_StorageFreeSpacePercent
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 14

    //  Total free space of the storage of the device as a percentage.
    PKEY_Devices_StorageFreeSpacePercent: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 14);

    //  Name:     System.Devices.TextMessages -- PKEY_Devices_TextMessages
    //  Type:     Byte -- VT_UI1
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 3

    //  Number of unread text messages on the device.
    PKEY_Devices_TextMessages: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 3);

    //  Name:     System.Devices.Voicemail -- PKEY_Devices_Voicemail
    //  Type:     Byte -- VT_UI1
    //  FormatID: {49CD1F76-5626-4B17-A4E8-18B4AA1A2213}, 6

    //  Status indicator used to indicate if the device has voicemail.
    PKEY_Devices_Voicemail: TPROPERTYKEY = (fmtid: '{49CD1F76-5626-4B17-A4E8-18B4AA1A2213}'; pid: 6);

    //  Name:     System.Devices.WiaDeviceType -- PKEY_Devices_WiaDeviceType
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {6BDD1FC6-810F-11D0-BEC7-08002BE2092F}, 2

    //  Windows Image Acquisition (WIA) device type.
    PKEY_Devices_WiaDeviceType: TPROPERTYKEY = (fmtid: '{6BDD1FC6-810F-11D0-BEC7-08002BE2092F}'; pid: 2);

    //  Name:     System.Devices.WiFi.InterfaceGuid -- PKEY_Devices_WiFi_InterfaceGuid
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {EF1167EB-CBFC-4341-A568-A7C91A68982C}, 2

    //  Wi-Fi Interface Guid
    PKEY_Devices_WiFi_InterfaceGuid: TPROPERTYKEY = (fmtid: '{EF1167EB-CBFC-4341-A568-A7C91A68982C}'; pid: 2);

    //  Name:     System.Devices.WiFiDirect.DeviceAddress -- PKEY_Devices_WiFiDirect_DeviceAddress
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: {1506935D-E3E7-450F-8637-82233EBE5F6E}, 13

    //  Wi-Fi Direct Device Address
    PKEY_Devices_WiFiDirect_DeviceAddress: TPROPERTYKEY = (fmtid: '{1506935D-E3E7-450F-8637-82233EBE5F6E}'; pid: 13);

    //  Name:     System.Devices.WiFiDirect.GroupId -- PKEY_Devices_WiFiDirect_GroupId
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {1506935D-E3E7-450F-8637-82233EBE5F6E}, 4

    //  Wi-Fi Direct Group Id
    PKEY_Devices_WiFiDirect_GroupId: TPROPERTYKEY = (fmtid: '{1506935D-E3E7-450F-8637-82233EBE5F6E}'; pid: 4);

    //  Name:     System.Devices.WiFiDirect.InformationElements -- PKEY_Devices_WiFiDirect_InformationElements
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: {1506935D-E3E7-450F-8637-82233EBE5F6E}, 12

    //  Indicates full set of IEs provided by the Wi-Fi Direct Device
    PKEY_Devices_WiFiDirect_InformationElements: TPROPERTYKEY = (fmtid: '{1506935D-E3E7-450F-8637-82233EBE5F6E}'; pid: 12);

    //  Name:     System.Devices.WiFiDirect.InterfaceAddress -- PKEY_Devices_WiFiDirect_InterfaceAddress
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: {1506935D-E3E7-450F-8637-82233EBE5F6E}, 2

    //  Wi-Fi Direct Interface Address
    PKEY_Devices_WiFiDirect_InterfaceAddress: TPROPERTYKEY = (fmtid: '{1506935D-E3E7-450F-8637-82233EBE5F6E}'; pid: 2);

    //  Name:     System.Devices.WiFiDirect.InterfaceGuid -- PKEY_Devices_WiFiDirect_InterfaceGuid
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {1506935D-E3E7-450F-8637-82233EBE5F6E}, 3

    //  Wi-Fi Direct Interface GUID
    PKEY_Devices_WiFiDirect_InterfaceGuid: TPROPERTYKEY = (fmtid: '{1506935D-E3E7-450F-8637-82233EBE5F6E}'; pid: 3);

    //  Name:     System.Devices.WiFiDirect.IsConnected -- PKEY_Devices_WiFiDirect_IsConnected
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {1506935D-E3E7-450F-8637-82233EBE5F6E}, 5

    //  Indicates Wi-Fi Direct Device's Connectivity State
    PKEY_Devices_WiFiDirect_IsConnected: TPROPERTYKEY = (fmtid: '{1506935D-E3E7-450F-8637-82233EBE5F6E}'; pid: 5);

    //  Name:     System.Devices.WiFiDirect.IsLegacyDevice -- PKEY_Devices_WiFiDirect_IsLegacyDevice
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {1506935D-E3E7-450F-8637-82233EBE5F6E}, 7

    //  Indicates if Wi-Fi Direct Device is a legacy device
    PKEY_Devices_WiFiDirect_IsLegacyDevice: TPROPERTYKEY = (fmtid: '{1506935D-E3E7-450F-8637-82233EBE5F6E}'; pid: 7);

    //  Name:     System.Devices.WiFiDirect.IsMiracastLcpSupported -- PKEY_Devices_WiFiDirect_IsMiracastLcpSupported
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {1506935D-E3E7-450F-8637-82233EBE5F6E}, 9

    //  Indicates if link content protection is supported by the Wi-Fi Direct Device if it is Miracast capable
    PKEY_Devices_WiFiDirect_IsMiracastLcpSupported: TPROPERTYKEY = (fmtid: '{1506935D-E3E7-450F-8637-82233EBE5F6E}'; pid: 9);

    //  Name:     System.Devices.WiFiDirect.IsVisible -- PKEY_Devices_WiFiDirect_IsVisible
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {1506935D-E3E7-450F-8637-82233EBE5F6E}, 6

    //  Indicates Wi-Fi Direct Device's Current Visibility
    PKEY_Devices_WiFiDirect_IsVisible: TPROPERTYKEY = (fmtid: '{1506935D-E3E7-450F-8637-82233EBE5F6E}'; pid: 6);

    //  Name:     System.Devices.WiFiDirect.MiracastVersion -- PKEY_Devices_WiFiDirect_MiracastVersion
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {1506935D-E3E7-450F-8637-82233EBE5F6E}, 8

    //  Indicates version of Miracast protocol if Wi-Fi Direct Device is Miracast capable
    PKEY_Devices_WiFiDirect_MiracastVersion: TPROPERTYKEY = (fmtid: '{1506935D-E3E7-450F-8637-82233EBE5F6E}'; pid: 8);

    //  Name:     System.Devices.WiFiDirect.Services -- PKEY_Devices_WiFiDirect_Services
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {1506935D-E3E7-450F-8637-82233EBE5F6E}, 10

    //  Indicates services supported by the Wi-Fi Direct Device
    PKEY_Devices_WiFiDirect_Services: TPROPERTYKEY = (fmtid: '{1506935D-E3E7-450F-8637-82233EBE5F6E}'; pid: 10);

    //  Name:     System.Devices.WiFiDirect.SupportedChannelList -- PKEY_Devices_WiFiDirect_SupportedChannelList
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: {1506935D-E3E7-450F-8637-82233EBE5F6E}, 11

    //  Wi-Fi Direct device's channel list
    PKEY_Devices_WiFiDirect_SupportedChannelList: TPROPERTYKEY = (fmtid: '{1506935D-E3E7-450F-8637-82233EBE5F6E}'; pid: 11);

    //  Name:     System.Devices.WiFiDirectServices.AdvertisementId -- PKEY_Devices_WiFiDirectServices_AdvertisementId
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {31B37743-7C5E-4005-93E6-E953F92B82E9}, 5

    //  Wi-Fi Direct Services Advertisement Id
    PKEY_Devices_WiFiDirectServices_AdvertisementId: TPROPERTYKEY = (fmtid: '{31B37743-7C5E-4005-93E6-E953F92B82E9}'; pid: 5);

    //  Name:     System.Devices.WiFiDirectServices.RequestServiceInformation -- PKEY_Devices_WiFiDirectServices_RequestServiceInformation
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {31B37743-7C5E-4005-93E6-E953F92B82E9}, 7

    //  Wi-Fi Direct Services Request Service Information
    PKEY_Devices_WiFiDirectServices_RequestServiceInformation: TPROPERTYKEY = (fmtid: '{31B37743-7C5E-4005-93E6-E953F92B82E9}'; pid: 7);

    //  Name:     System.Devices.WiFiDirectServices.ServiceAddress -- PKEY_Devices_WiFiDirectServices_ServiceAddress
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: {31B37743-7C5E-4005-93E6-E953F92B82E9}, 2

    //  Wi-Fi Direct Services Service Address
    PKEY_Devices_WiFiDirectServices_ServiceAddress: TPROPERTYKEY = (fmtid: '{31B37743-7C5E-4005-93E6-E953F92B82E9}'; pid: 2);

    //  Name:     System.Devices.WiFiDirectServices.ServiceConfigMethods -- PKEY_Devices_WiFiDirectServices_ServiceConfigMethods
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {31B37743-7C5E-4005-93E6-E953F92B82E9}, 6

    //  Wi-Fi Direct Services Configuration Methods
    PKEY_Devices_WiFiDirectServices_ServiceConfigMethods: TPROPERTYKEY = (fmtid: '{31B37743-7C5E-4005-93E6-E953F92B82E9}'; pid: 6);

    //  Name:     System.Devices.WiFiDirectServices.ServiceInformation -- PKEY_Devices_WiFiDirectServices_ServiceInformation
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: {31B37743-7C5E-4005-93E6-E953F92B82E9}, 4

    //  Wi-Fi Direct Services Service Information
    PKEY_Devices_WiFiDirectServices_ServiceInformation: TPROPERTYKEY = (fmtid: '{31B37743-7C5E-4005-93E6-E953F92B82E9}'; pid: 4);

    //  Name:     System.Devices.WiFiDirectServices.ServiceName -- PKEY_Devices_WiFiDirectServices_ServiceName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {31B37743-7C5E-4005-93E6-E953F92B82E9}, 3

    //  Wi-Fi Direct Services Service Name
    PKEY_Devices_WiFiDirectServices_ServiceName: TPROPERTYKEY = (fmtid: '{31B37743-7C5E-4005-93E6-E953F92B82E9}'; pid: 3);

    //  Name:     System.Devices.WinPhone8CameraFlags -- PKEY_Devices_WinPhone8CameraFlags
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {B7B4D61C-5A64-4187-A52E-B1539F359099}, 2

    //  Flags for a WP8 camera device.
    PKEY_Devices_WinPhone8CameraFlags: TPROPERTYKEY = (fmtid: '{B7B4D61C-5A64-4187-A52E-B1539F359099}'; pid: 2);

    //  Name:     System.Devices.Wwan.InterfaceGuid -- PKEY_Devices_Wwan_InterfaceGuid
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {FF1167EB-CBFC-4341-A568-A7C91A68982C}, 2

    //  WWAN Interface Guid
    PKEY_Devices_Wwan_InterfaceGuid: TPROPERTYKEY = (fmtid: '{FF1167EB-CBFC-4341-A568-A7C91A68982C}'; pid: 2);

    //  Name:     System.Storage.Portable -- PKEY_Storage_Portable
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {4D1EBEE8-0803-4774-9842-B77DB50265E9}, 2

    //  Indicates if the drive for the storage is portable.
    PKEY_Storage_Portable: TPROPERTYKEY = (fmtid: '{4D1EBEE8-0803-4774-9842-B77DB50265E9}'; pid: 2);

    //  Name:     System.Storage.RemovableMedia -- PKEY_Storage_RemovableMedia
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {4D1EBEE8-0803-4774-9842-B77DB50265E9}, 3

    //  Indicates if the storage media is removable.
    PKEY_Storage_RemovableMedia: TPROPERTYKEY = (fmtid: '{4D1EBEE8-0803-4774-9842-B77DB50265E9}'; pid: 3);

    //  Name:     System.Storage.SystemCritical -- PKEY_Storage_SystemCritical
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {4D1EBEE8-0803-4774-9842-B77DB50265E9}, 4

    //  Indicates if the storage media is system critical.
    PKEY_Storage_SystemCritical: TPROPERTYKEY = (fmtid: '{4D1EBEE8-0803-4774-9842-B77DB50265E9}'; pid: 4);

    //-----------------------------------------------------------------------------
    // Document properties

    //  Name:     System.Document.ByteCount -- PKEY_Document_ByteCount
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 4 (PIDDSI_BYTECOUNT)


    PKEY_Document_ByteCount: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 4);

    //  Name:     System.Document.CharacterCount -- PKEY_Document_CharacterCount
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 16 (PIDSI_CHARCOUNT)


    PKEY_Document_CharacterCount: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 16);

    //  Name:     System.Document.ClientID -- PKEY_Document_ClientID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {276D7BB0-5B34-4FB0-AA4B-158ED12A1809}, 100
    PKEY_Document_ClientID: TPROPERTYKEY = (fmtid: '{276D7BB0-5B34-4FB0-AA4B-158ED12A1809}'; pid: 100);

    //  Name:     System.Document.Contributor -- PKEY_Document_Contributor
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {F334115E-DA1B-4509-9B3D-119504DC7ABB}, 100
    PKEY_Document_Contributor: TPROPERTYKEY = (fmtid: '{F334115E-DA1B-4509-9B3D-119504DC7ABB}'; pid: 100);

    //  Name:     System.Document.DateCreated -- PKEY_Document_DateCreated
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 12 (PIDSI_CREATE_DTM)

    //  This property is stored in the document, not obtained from the file system.
    PKEY_Document_DateCreated: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 12);

    //  Name:     System.Document.DatePrinted -- PKEY_Document_DatePrinted
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 11 (PIDSI_LASTPRINTED)

    //  Legacy name: "DocLastPrinted".
    PKEY_Document_DatePrinted: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 11);

    //  Name:     System.Document.DateSaved -- PKEY_Document_DateSaved
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 13 (PIDSI_LASTSAVE_DTM)

    //  Legacy name: "DocLastSavedTm".
    PKEY_Document_DateSaved: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 13);

    //  Name:     System.Document.Division -- PKEY_Document_Division
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {1E005EE6-BF27-428B-B01C-79676ACD2870}, 100
    PKEY_Document_Division: TPROPERTYKEY = (fmtid: '{1E005EE6-BF27-428B-B01C-79676ACD2870}'; pid: 100);

    //  Name:     System.Document.DocumentID -- PKEY_Document_DocumentID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {E08805C8-E395-40DF-80D2-54F0D6C43154}, 100
    PKEY_Document_DocumentID: TPROPERTYKEY = (fmtid: '{E08805C8-E395-40DF-80D2-54F0D6C43154}'; pid: 100);

    //  Name:     System.Document.HiddenSlideCount -- PKEY_Document_HiddenSlideCount
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 9 (PIDDSI_HIDDENCOUNT)


    PKEY_Document_HiddenSlideCount: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 9);

    //  Name:     System.Document.LastAuthor -- PKEY_Document_LastAuthor
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 8 (PIDSI_LASTAUTHOR)


    PKEY_Document_LastAuthor: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 8);

    //  Name:     System.Document.LineCount -- PKEY_Document_LineCount
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 5 (PIDDSI_LINECOUNT)


    PKEY_Document_LineCount: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 5);

    //  Name:     System.Document.Manager -- PKEY_Document_Manager
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 14 (PIDDSI_MANAGER)


    PKEY_Document_Manager: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 14);

    //  Name:     System.Document.MultimediaClipCount -- PKEY_Document_MultimediaClipCount
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 10 (PIDDSI_MMCLIPCOUNT)


    PKEY_Document_MultimediaClipCount: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 10);

    //  Name:     System.Document.NoteCount -- PKEY_Document_NoteCount
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 8 (PIDDSI_NOTECOUNT)


    PKEY_Document_NoteCount: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 8);

    //  Name:     System.Document.PageCount -- PKEY_Document_PageCount
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 14 (PIDSI_PAGECOUNT)


    PKEY_Document_PageCount: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 14);

    //  Name:     System.Document.ParagraphCount -- PKEY_Document_ParagraphCount
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 6 (PIDDSI_PARCOUNT)


    PKEY_Document_ParagraphCount: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 6);

    //  Name:     System.Document.PresentationFormat -- PKEY_Document_PresentationFormat
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 3 (PIDDSI_PRESFORMAT)


    PKEY_Document_PresentationFormat: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 3);

    //  Name:     System.Document.RevisionNumber -- PKEY_Document_RevisionNumber
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 9 (PIDSI_REVNUMBER)


    PKEY_Document_RevisionNumber: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 9);

    //  Name:     System.Document.Security -- PKEY_Document_Security
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 19

    //  Access control information, from SummaryInfo propset
    PKEY_Document_Security: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 19);

    //  Name:     System.Document.SlideCount -- PKEY_Document_SlideCount
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 7 (PIDDSI_SLIDECOUNT)


    PKEY_Document_SlideCount: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 7);

    //  Name:     System.Document.Template -- PKEY_Document_Template
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 7 (PIDSI_TEMPLATE)


    PKEY_Document_Template: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 7);

    //  Name:     System.Document.TotalEditingTime -- PKEY_Document_TotalEditingTime
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 10 (PIDSI_EDITTIME)

    //  100ns units, not milliseconds. VT_FILETIME for IPropertySetStorage handlers (legacy)
    PKEY_Document_TotalEditingTime: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 10);

    //  Name:     System.Document.Version -- PKEY_Document_Version
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_DocumentSummaryInformation) {D5CDD502-2E9C-101B-9397-08002B2CF9AE}, 29
    PKEY_Document_Version: TPROPERTYKEY = (fmtid: '{D5CDD502-2E9C-101B-9397-08002B2CF9AE}'; pid: 29);

    //  Name:     System.Document.WordCount -- PKEY_Document_WordCount
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_SummaryInformation) {F29F85E0-4FF9-1068-AB91-08002B27B3D9}, 15 (PIDSI_WORDCOUNT)


    PKEY_Document_WordCount: TPROPERTYKEY = (fmtid: '{F29F85E0-4FF9-1068-AB91-08002B27B3D9}'; pid: 15);

    //-----------------------------------------------------------------------------
    // DRM properties

    //  Name:     System.DRM.DatePlayExpires -- PKEY_DRM_DatePlayExpires
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: (FMTID_DRM) {AEAC19E4-89AE-4508-B9B7-BB867ABEE2ED}, 6 (PIDDRSI_PLAYEXPIRES)

    //  Indicates when play expires for digital rights management.
    PKEY_DRM_DatePlayExpires: TPROPERTYKEY = (fmtid: '{AEAC19E4-89AE-4508-B9B7-BB867ABEE2ED}'; pid: 6);

    //  Name:     System.DRM.DatePlayStarts -- PKEY_DRM_DatePlayStarts
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: (FMTID_DRM) {AEAC19E4-89AE-4508-B9B7-BB867ABEE2ED}, 5 (PIDDRSI_PLAYSTARTS)

    //  Indicates when play starts for digital rights management.
    PKEY_DRM_DatePlayStarts: TPROPERTYKEY = (fmtid: '{AEAC19E4-89AE-4508-B9B7-BB867ABEE2ED}'; pid: 5);

    //  Name:     System.DRM.Description -- PKEY_DRM_Description
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_DRM) {AEAC19E4-89AE-4508-B9B7-BB867ABEE2ED}, 3 (PIDDRSI_DESCRIPTION)

    //  Displays the description for digital rights management.
    PKEY_DRM_Description: TPROPERTYKEY = (fmtid: '{AEAC19E4-89AE-4508-B9B7-BB867ABEE2ED}'; pid: 3);

    //  Name:     System.DRM.IsDisabled -- PKEY_DRM_IsDisabled
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: (FMTID_DRM) {AEAC19E4-89AE-4508-B9B7-BB867ABEE2ED}, 7

    //  Indicates whether the media file has been disabled by DRM.
    PKEY_DRM_IsDisabled: TPROPERTYKEY = (fmtid: '{AEAC19E4-89AE-4508-B9B7-BB867ABEE2ED}'; pid: 7);

    //  Name:     System.DRM.IsProtected -- PKEY_DRM_IsProtected
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: (FMTID_DRM) {AEAC19E4-89AE-4508-B9B7-BB867ABEE2ED}, 2 (PIDDRSI_PROTECTED)


    PKEY_DRM_IsProtected: TPROPERTYKEY = (fmtid: '{AEAC19E4-89AE-4508-B9B7-BB867ABEE2ED}'; pid: 2);

    //  Name:     System.DRM.PlayCount -- PKEY_DRM_PlayCount
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_DRM) {AEAC19E4-89AE-4508-B9B7-BB867ABEE2ED}, 4 (PIDDRSI_PLAYCOUNT)

    //  Indicates the play count for digital rights management.
    PKEY_DRM_PlayCount: TPROPERTYKEY = (fmtid: '{AEAC19E4-89AE-4508-B9B7-BB867ABEE2ED}'; pid: 4);

    //-----------------------------------------------------------------------------
    // GPS properties

    //  Name:     System.GPS.Altitude -- PKEY_GPS_Altitude
    //  Type:     Double -- VT_R8
    //  FormatID: {827EDB4F-5B73-44A7-891D-FDFFABEA35CA}, 100

    //  Indicates the altitude based on the reference in PKEY_GPS_AltitudeRef.  Calculated from PKEY_GPS_AltitudeNumerator and
    //  PKEY_GPS_AltitudeDenominator
    PKEY_GPS_Altitude: TPROPERTYKEY = (fmtid: '{827EDB4F-5B73-44A7-891D-FDFFABEA35CA}'; pid: 100);

    //  Name:     System.GPS.AltitudeDenominator -- PKEY_GPS_AltitudeDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {78342DCB-E358-4145-AE9A-6BFE4E0F9F51}, 100

    //  Denominator of PKEY_GPS_Altitude
    PKEY_GPS_AltitudeDenominator: TPROPERTYKEY = (fmtid: '{78342DCB-E358-4145-AE9A-6BFE4E0F9F51}'; pid: 100);

    //  Name:     System.GPS.AltitudeNumerator -- PKEY_GPS_AltitudeNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {2DAD1EB7-816D-40D3-9EC3-C9773BE2AADE}, 100

    //  Numerator of PKEY_GPS_Altitude
    PKEY_GPS_AltitudeNumerator: TPROPERTYKEY = (fmtid: '{2DAD1EB7-816D-40D3-9EC3-C9773BE2AADE}'; pid: 100);

    //  Name:     System.GPS.AltitudeRef -- PKEY_GPS_AltitudeRef
    //  Type:     Byte -- VT_UI1
    //  FormatID: {46AC629D-75EA-4515-867F-6DC4321C5844}, 100

    //  Indicates the reference for the altitude property. (eg: above sea level, below sea level, absolute value)
    PKEY_GPS_AltitudeRef: TPROPERTYKEY = (fmtid: '{46AC629D-75EA-4515-867F-6DC4321C5844}'; pid: 100);

    //  Name:     System.GPS.AreaInformation -- PKEY_GPS_AreaInformation
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {972E333E-AC7E-49F1-8ADF-A70D07A9BCAB}, 100

    //  Represents the name of the GPS area
    PKEY_GPS_AreaInformation: TPROPERTYKEY = (fmtid: '{972E333E-AC7E-49F1-8ADF-A70D07A9BCAB}'; pid: 100);

    //  Name:     System.GPS.Date -- PKEY_GPS_Date
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {3602C812-0F3B-45F0-85AD-603468D69423}, 100

    //  Date and time of the GPS record
    PKEY_GPS_Date: TPROPERTYKEY = (fmtid: '{3602C812-0F3B-45F0-85AD-603468D69423}'; pid: 100);

    //  Name:     System.GPS.DestBearing -- PKEY_GPS_DestBearing
    //  Type:     Double -- VT_R8
    //  FormatID: {C66D4B3C-E888-47CC-B99F-9DCA3EE34DEA}, 100

    //  Indicates the bearing to the destination point.  Calculated from PKEY_GPS_DestBearingNumerator and
    //  PKEY_GPS_DestBearingDenominator.
    PKEY_GPS_DestBearing: TPROPERTYKEY = (fmtid: '{C66D4B3C-E888-47CC-B99F-9DCA3EE34DEA}'; pid: 100);

    //  Name:     System.GPS.DestBearingDenominator -- PKEY_GPS_DestBearingDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {7ABCF4F8-7C3F-4988-AC91-8D2C2E97ECA5}, 100

    //  Denominator of PKEY_GPS_DestBearing
    PKEY_GPS_DestBearingDenominator: TPROPERTYKEY = (fmtid: '{7ABCF4F8-7C3F-4988-AC91-8D2C2E97ECA5}'; pid: 100);

    //  Name:     System.GPS.DestBearingNumerator -- PKEY_GPS_DestBearingNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {BA3B1DA9-86EE-4B5D-A2A4-A271A429F0CF}, 100

    //  Numerator of PKEY_GPS_DestBearing
    PKEY_GPS_DestBearingNumerator: TPROPERTYKEY = (fmtid: '{BA3B1DA9-86EE-4B5D-A2A4-A271A429F0CF}'; pid: 100);

    //  Name:     System.GPS.DestBearingRef -- PKEY_GPS_DestBearingRef
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {9AB84393-2A0F-4B75-BB22-7279786977CB}, 100

    //  Indicates the reference used for the giving the bearing to the destination point.  (eg: true direction, magnetic direction)
    PKEY_GPS_DestBearingRef: TPROPERTYKEY = (fmtid: '{9AB84393-2A0F-4B75-BB22-7279786977CB}'; pid: 100);

    //  Name:     System.GPS.DestDistance -- PKEY_GPS_DestDistance
    //  Type:     Double -- VT_R8
    //  FormatID: {A93EAE04-6804-4F24-AC81-09B266452118}, 100

    //  Indicates the distance to the destination point.  Calculated from PKEY_GPS_DestDistanceNumerator and
    //  PKEY_GPS_DestDistanceDenominator.
    PKEY_GPS_DestDistance: TPROPERTYKEY = (fmtid: '{A93EAE04-6804-4F24-AC81-09B266452118}'; pid: 100);

    //  Name:     System.GPS.DestDistanceDenominator -- PKEY_GPS_DestDistanceDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {9BC2C99B-AC71-4127-9D1C-2596D0D7DCB7}, 100

    //  Denominator of PKEY_GPS_DestDistance
    PKEY_GPS_DestDistanceDenominator: TPROPERTYKEY = (fmtid: '{9BC2C99B-AC71-4127-9D1C-2596D0D7DCB7}'; pid: 100);

    //  Name:     System.GPS.DestDistanceNumerator -- PKEY_GPS_DestDistanceNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {2BDA47DA-08C6-4FE1-80BC-A72FC517C5D0}, 100

    //  Numerator of PKEY_GPS_DestDistance
    PKEY_GPS_DestDistanceNumerator: TPROPERTYKEY = (fmtid: '{2BDA47DA-08C6-4FE1-80BC-A72FC517C5D0}'; pid: 100);

    //  Name:     System.GPS.DestDistanceRef -- PKEY_GPS_DestDistanceRef
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {ED4DF2D3-8695-450B-856F-F5C1C53ACB66}, 100

    //  Indicates the unit used to express the distance to the destination.  (eg: kilometers, miles, knots)
    PKEY_GPS_DestDistanceRef: TPROPERTYKEY = (fmtid: '{ED4DF2D3-8695-450B-856F-F5C1C53ACB66}'; pid: 100);

    //  Name:     System.GPS.DestLatitude -- PKEY_GPS_DestLatitude
    //  Type:     Multivalue Double -- VT_VECTOR | VT_R8  (For variants: VT_ARRAY | VT_R8)
    //  FormatID: {9D1D7CC5-5C39-451C-86B3-928E2D18CC47}, 100

    //  Indicates the latitude of the destination point.  This is an array of three values.  Index 0 is the degrees, index 1
    //  is the minutes, index 2 is the seconds.  Each is calculated from the values in PKEY_GPS_DestLatitudeNumerator and
    //  PKEY_GPS_DestLatitudeDenominator.
    PKEY_GPS_DestLatitude: TPROPERTYKEY = (fmtid: '{9D1D7CC5-5C39-451C-86B3-928E2D18CC47}'; pid: 100);

    //  Name:     System.GPS.DestLatitudeDenominator -- PKEY_GPS_DestLatitudeDenominator
    //  Type:     Multivalue UInt32 -- VT_VECTOR | VT_UI4  (For variants: VT_ARRAY | VT_UI4)
    //  FormatID: {3A372292-7FCA-49A7-99D5-E47BB2D4E7AB}, 100

    //  Denominator of PKEY_GPS_DestLatitude
    PKEY_GPS_DestLatitudeDenominator: TPROPERTYKEY = (fmtid: '{3A372292-7FCA-49A7-99D5-E47BB2D4E7AB}'; pid: 100);

    //  Name:     System.GPS.DestLatitudeNumerator -- PKEY_GPS_DestLatitudeNumerator
    //  Type:     Multivalue UInt32 -- VT_VECTOR | VT_UI4  (For variants: VT_ARRAY | VT_UI4)
    //  FormatID: {ECF4B6F6-D5A6-433C-BB92-4076650FC890}, 100

    //  Numerator of PKEY_GPS_DestLatitude
    PKEY_GPS_DestLatitudeNumerator: TPROPERTYKEY = (fmtid: '{ECF4B6F6-D5A6-433C-BB92-4076650FC890}'; pid: 100);

    //  Name:     System.GPS.DestLatitudeRef -- PKEY_GPS_DestLatitudeRef
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {CEA820B9-CE61-4885-A128-005D9087C192}, 100

    //  Indicates whether the latitude destination point is north or south latitude
    PKEY_GPS_DestLatitudeRef: TPROPERTYKEY = (fmtid: '{CEA820B9-CE61-4885-A128-005D9087C192}'; pid: 100);

    //  Name:     System.GPS.DestLongitude -- PKEY_GPS_DestLongitude
    //  Type:     Multivalue Double -- VT_VECTOR | VT_R8  (For variants: VT_ARRAY | VT_R8)
    //  FormatID: {47A96261-CB4C-4807-8AD3-40B9D9DBC6BC}, 100

    //  Indicates the latitude of the destination point.  This is an array of three values.  Index 0 is the degrees, index 1
    //  is the minutes, index 2 is the seconds.  Each is calculated from the values in PKEY_GPS_DestLongitudeNumerator and
    //  PKEY_GPS_DestLongitudeDenominator.
    PKEY_GPS_DestLongitude: TPROPERTYKEY = (fmtid: '{47A96261-CB4C-4807-8AD3-40B9D9DBC6BC}'; pid: 100);

    //  Name:     System.GPS.DestLongitudeDenominator -- PKEY_GPS_DestLongitudeDenominator
    //  Type:     Multivalue UInt32 -- VT_VECTOR | VT_UI4  (For variants: VT_ARRAY | VT_UI4)
    //  FormatID: {425D69E5-48AD-4900-8D80-6EB6B8D0AC86}, 100

    //  Denominator of PKEY_GPS_DestLongitude
    PKEY_GPS_DestLongitudeDenominator: TPROPERTYKEY = (fmtid: '{425D69E5-48AD-4900-8D80-6EB6B8D0AC86}'; pid: 100);

    //  Name:     System.GPS.DestLongitudeNumerator -- PKEY_GPS_DestLongitudeNumerator
    //  Type:     Multivalue UInt32 -- VT_VECTOR | VT_UI4  (For variants: VT_ARRAY | VT_UI4)
    //  FormatID: {A3250282-FB6D-48D5-9A89-DBCACE75CCCF}, 100

    //  Numerator of PKEY_GPS_DestLongitude
    PKEY_GPS_DestLongitudeNumerator: TPROPERTYKEY = (fmtid: '{A3250282-FB6D-48D5-9A89-DBCACE75CCCF}'; pid: 100);

    //  Name:     System.GPS.DestLongitudeRef -- PKEY_GPS_DestLongitudeRef
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {182C1EA6-7C1C-4083-AB4B-AC6C9F4ED128}, 100

    //  Indicates whether the longitude destination point is east or west longitude
    PKEY_GPS_DestLongitudeRef: TPROPERTYKEY = (fmtid: '{182C1EA6-7C1C-4083-AB4B-AC6C9F4ED128}'; pid: 100);

    //  Name:     System.GPS.Differential -- PKEY_GPS_Differential
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {AAF4EE25-BD3B-4DD7-BFC4-47F77BB00F6D}, 100

    //  Indicates whether differential correction was applied to the GPS receiver
    PKEY_GPS_Differential: TPROPERTYKEY = (fmtid: '{AAF4EE25-BD3B-4DD7-BFC4-47F77BB00F6D}'; pid: 100);

    //  Name:     System.GPS.DOP -- PKEY_GPS_DOP
    //  Type:     Double -- VT_R8
    //  FormatID: {0CF8FB02-1837-42F1-A697-A7017AA289B9}, 100

    //  Indicates the GPS DOP (data degree of precision).  Calculated from PKEY_GPS_DOPNumerator and PKEY_GPS_DOPDenominator
    PKEY_GPS_DOP: TPROPERTYKEY = (fmtid: '{0CF8FB02-1837-42F1-A697-A7017AA289B9}'; pid: 100);

    //  Name:     System.GPS.DOPDenominator -- PKEY_GPS_DOPDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {A0BE94C5-50BA-487B-BD35-0654BE8881ED}, 100

    //  Denominator of PKEY_GPS_DOP
    PKEY_GPS_DOPDenominator: TPROPERTYKEY = (fmtid: '{A0BE94C5-50BA-487B-BD35-0654BE8881ED}'; pid: 100);

    //  Name:     System.GPS.DOPNumerator -- PKEY_GPS_DOPNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {47166B16-364F-4AA0-9F31-E2AB3DF449C3}, 100

    //  Numerator of PKEY_GPS_DOP
    PKEY_GPS_DOPNumerator: TPROPERTYKEY = (fmtid: '{47166B16-364F-4AA0-9F31-E2AB3DF449C3}'; pid: 100);

    //  Name:     System.GPS.ImgDirection -- PKEY_GPS_ImgDirection
    //  Type:     Double -- VT_R8
    //  FormatID: {16473C91-D017-4ED9-BA4D-B6BAA55DBCF8}, 100

    //  Indicates direction of the image when it was captured.  Calculated from PKEY_GPS_ImgDirectionNumerator and
    //  PKEY_GPS_ImgDirectionDenominator.
    PKEY_GPS_ImgDirection: TPROPERTYKEY = (fmtid: '{16473C91-D017-4ED9-BA4D-B6BAA55DBCF8}'; pid: 100);

    //  Name:     System.GPS.ImgDirectionDenominator -- PKEY_GPS_ImgDirectionDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {10B24595-41A2-4E20-93C2-5761C1395F32}, 100

    //  Denominator of PKEY_GPS_ImgDirection
    PKEY_GPS_ImgDirectionDenominator: TPROPERTYKEY = (fmtid: '{10B24595-41A2-4E20-93C2-5761C1395F32}'; pid: 100);

    //  Name:     System.GPS.ImgDirectionNumerator -- PKEY_GPS_ImgDirectionNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {DC5877C7-225F-45F7-BAC7-E81334B6130A}, 100

    //  Numerator of PKEY_GPS_ImgDirection
    PKEY_GPS_ImgDirectionNumerator: TPROPERTYKEY = (fmtid: '{DC5877C7-225F-45F7-BAC7-E81334B6130A}'; pid: 100);

    //  Name:     System.GPS.ImgDirectionRef -- PKEY_GPS_ImgDirectionRef
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A4AAA5B7-1AD0-445F-811A-0F8F6E67F6B5}, 100

    //  Indicates reference for giving the direction of the image when it was captured.  (eg: true direction, magnetic direction)
    PKEY_GPS_ImgDirectionRef: TPROPERTYKEY = (fmtid: '{A4AAA5B7-1AD0-445F-811A-0F8F6E67F6B5}'; pid: 100);

    //  Name:     System.GPS.Latitude -- PKEY_GPS_Latitude
    //  Type:     Multivalue Double -- VT_VECTOR | VT_R8  (For variants: VT_ARRAY | VT_R8)
    //  FormatID: {8727CFFF-4868-4EC6-AD5B-81B98521D1AB}, 100

    //  Indicates the latitude.  This is an array of three values.  Index 0 is the degrees, index 1 is the minutes, index 2
    //  is the seconds.  Each is calculated from the values in PKEY_GPS_LatitudeNumerator and PKEY_GPS_LatitudeDenominator.
    PKEY_GPS_Latitude: TPROPERTYKEY = (fmtid: '{8727CFFF-4868-4EC6-AD5B-81B98521D1AB}'; pid: 100);

    //  Name:     System.GPS.LatitudeDecimal -- PKEY_GPS_LatitudeDecimal
    //  Type:     Double -- VT_R8
    //  FormatID: {0F55CDE2-4F49-450D-92C1-DCD16301B1B7}, 100

    //  Indicates the latitude based on the reference in PKEY_GPS_LatitudeRef.  Calculated from PKEY_GPS_LatitudeNumerator and
    //  PKEY_GPS_LatitudeDenominator
    PKEY_GPS_LatitudeDecimal: TPROPERTYKEY = (fmtid: '{0F55CDE2-4F49-450D-92C1-DCD16301B1B7}'; pid: 100);

    //  Name:     System.GPS.LatitudeDenominator -- PKEY_GPS_LatitudeDenominator
    //  Type:     Multivalue UInt32 -- VT_VECTOR | VT_UI4  (For variants: VT_ARRAY | VT_UI4)
    //  FormatID: {16E634EE-2BFF-497B-BD8A-4341AD39EEB9}, 100

    //  Denominator of PKEY_GPS_Latitude
    PKEY_GPS_LatitudeDenominator: TPROPERTYKEY = (fmtid: '{16E634EE-2BFF-497B-BD8A-4341AD39EEB9}'; pid: 100);

    //  Name:     System.GPS.LatitudeNumerator -- PKEY_GPS_LatitudeNumerator
    //  Type:     Multivalue UInt32 -- VT_VECTOR | VT_UI4  (For variants: VT_ARRAY | VT_UI4)
    //  FormatID: {7DDAAAD1-CCC8-41AE-B750-B2CB8031AEA2}, 100

    //  Numerator of PKEY_GPS_Latitude
    PKEY_GPS_LatitudeNumerator: TPROPERTYKEY = (fmtid: '{7DDAAAD1-CCC8-41AE-B750-B2CB8031AEA2}'; pid: 100);

    //  Name:     System.GPS.LatitudeRef -- PKEY_GPS_LatitudeRef
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {029C0252-5B86-46C7-ACA0-2769FFC8E3D4}, 100

    //  Indicates whether latitude is north or south latitude
    PKEY_GPS_LatitudeRef: TPROPERTYKEY = (fmtid: '{029C0252-5B86-46C7-ACA0-2769FFC8E3D4}'; pid: 100);

    //  Name:     System.GPS.Longitude -- PKEY_GPS_Longitude
    //  Type:     Multivalue Double -- VT_VECTOR | VT_R8  (For variants: VT_ARRAY | VT_R8)
    //  FormatID: {C4C4DBB2-B593-466B-BBDA-D03D27D5E43A}, 100

    //  Indicates the longitude.  This is an array of three values.  Index 0 is the degrees, index 1 is the minutes, index 2
    //  is the seconds.  Each is calculated from the values in PKEY_GPS_LongitudeNumerator and PKEY_GPS_LongitudeDenominator.
    PKEY_GPS_Longitude: TPROPERTYKEY = (fmtid: '{C4C4DBB2-B593-466B-BBDA-D03D27D5E43A}'; pid: 100);

    //  Name:     System.GPS.LongitudeDecimal -- PKEY_GPS_LongitudeDecimal
    //  Type:     Double -- VT_R8
    //  FormatID: {4679C1B5-844D-4590-BAF5-F322231F1B81}, 100

    //  Indicates the longitude based on the reference in PKEY_GPS_LongitudeRef.  Calculated from PKEY_GPS_LongitudeNumerator and
    //  PKEY_GPS_LongitudeDenominator
    PKEY_GPS_LongitudeDecimal: TPROPERTYKEY = (fmtid: '{4679C1B5-844D-4590-BAF5-F322231F1B81}'; pid: 100);

    //  Name:     System.GPS.LongitudeDenominator -- PKEY_GPS_LongitudeDenominator
    //  Type:     Multivalue UInt32 -- VT_VECTOR | VT_UI4  (For variants: VT_ARRAY | VT_UI4)
    //  FormatID: {BE6E176C-4534-4D2C-ACE5-31DEDAC1606B}, 100

    //  Denominator of PKEY_GPS_Longitude
    PKEY_GPS_LongitudeDenominator: TPROPERTYKEY = (fmtid: '{BE6E176C-4534-4D2C-ACE5-31DEDAC1606B}'; pid: 100);

    //  Name:     System.GPS.LongitudeNumerator -- PKEY_GPS_LongitudeNumerator
    //  Type:     Multivalue UInt32 -- VT_VECTOR | VT_UI4  (For variants: VT_ARRAY | VT_UI4)
    //  FormatID: {02B0F689-A914-4E45-821D-1DDA452ED2C4}, 100

    //  Numerator of PKEY_GPS_Longitude
    PKEY_GPS_LongitudeNumerator: TPROPERTYKEY = (fmtid: '{02B0F689-A914-4E45-821D-1DDA452ED2C4}'; pid: 100);

    //  Name:     System.GPS.LongitudeRef -- PKEY_GPS_LongitudeRef
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {33DCF22B-28D5-464C-8035-1EE9EFD25278}, 100

    //  Indicates whether longitude is east or west longitude
    PKEY_GPS_LongitudeRef: TPROPERTYKEY = (fmtid: '{33DCF22B-28D5-464C-8035-1EE9EFD25278}'; pid: 100);

    //  Name:     System.GPS.MapDatum -- PKEY_GPS_MapDatum
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {2CA2DAE6-EDDC-407D-BEF1-773942ABFA95}, 100

    //  Indicates the geodetic survey data used by the GPS receiver
    PKEY_GPS_MapDatum: TPROPERTYKEY = (fmtid: '{2CA2DAE6-EDDC-407D-BEF1-773942ABFA95}'; pid: 100);

    //  Name:     System.GPS.MeasureMode -- PKEY_GPS_MeasureMode
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A015ED5D-AAEA-4D58-8A86-3C586920EA0B}, 100

    //  Indicates the GPS measurement mode.  (eg: 2-dimensional, 3-dimensional)
    PKEY_GPS_MeasureMode: TPROPERTYKEY = (fmtid: '{A015ED5D-AAEA-4D58-8A86-3C586920EA0B}'; pid: 100);

    //  Name:     System.GPS.ProcessingMethod -- PKEY_GPS_ProcessingMethod
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {59D49E61-840F-4AA9-A939-E2099B7F6399}, 100

    //  Indicates the name of the method used for location finding
    PKEY_GPS_ProcessingMethod: TPROPERTYKEY = (fmtid: '{59D49E61-840F-4AA9-A939-E2099B7F6399}'; pid: 100);

    //  Name:     System.GPS.Satellites -- PKEY_GPS_Satellites
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {467EE575-1F25-4557-AD4E-B8B58B0D9C15}, 100

    //  Indicates the GPS satellites used for measurements
    PKEY_GPS_Satellites: TPROPERTYKEY = (fmtid: '{467EE575-1F25-4557-AD4E-B8B58B0D9C15}'; pid: 100);

    //  Name:     System.GPS.Speed -- PKEY_GPS_Speed
    //  Type:     Double -- VT_R8
    //  FormatID: {DA5D0862-6E76-4E1B-BABD-70021BD25494}, 100

    //  Indicates the speed of the GPS receiver movement.  Calculated from PKEY_GPS_SpeedNumerator and
    //  PKEY_GPS_SpeedDenominator.
    PKEY_GPS_Speed: TPROPERTYKEY = (fmtid: '{DA5D0862-6E76-4E1B-BABD-70021BD25494}'; pid: 100);

    //  Name:     System.GPS.SpeedDenominator -- PKEY_GPS_SpeedDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {7D122D5A-AE5E-4335-8841-D71E7CE72F53}, 100

    //  Denominator of PKEY_GPS_Speed
    PKEY_GPS_SpeedDenominator: TPROPERTYKEY = (fmtid: '{7D122D5A-AE5E-4335-8841-D71E7CE72F53}'; pid: 100);

    //  Name:     System.GPS.SpeedNumerator -- PKEY_GPS_SpeedNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {ACC9CE3D-C213-4942-8B48-6D0820F21C6D}, 100

    //  Numerator of PKEY_GPS_Speed
    PKEY_GPS_SpeedNumerator: TPROPERTYKEY = (fmtid: '{ACC9CE3D-C213-4942-8B48-6D0820F21C6D}'; pid: 100);

    //  Name:     System.GPS.SpeedRef -- PKEY_GPS_SpeedRef
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {ECF7F4C9-544F-4D6D-9D98-8AD79ADAF453}, 100

    //  Indicates the unit used to express the speed of the GPS receiver movement.  (eg: kilometers per hour,
    //  miles per hour, knots).
    PKEY_GPS_SpeedRef: TPROPERTYKEY = (fmtid: '{ECF7F4C9-544F-4D6D-9D98-8AD79ADAF453}'; pid: 100);

    //  Name:     System.GPS.Status -- PKEY_GPS_Status
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {125491F4-818F-46B2-91B5-D537753617B2}, 100

    //  Indicates the status of the GPS receiver when the image was recorded.  (eg: measurement in progress,
    //  measurement interoperability).
    PKEY_GPS_Status: TPROPERTYKEY = (fmtid: '{125491F4-818F-46B2-91B5-D537753617B2}'; pid: 100);

    //  Name:     System.GPS.Track -- PKEY_GPS_Track
    //  Type:     Double -- VT_R8
    //  FormatID: {76C09943-7C33-49E3-9E7E-CDBA872CFADA}, 100

    //  Indicates the direction of the GPS receiver movement.  Calculated from PKEY_GPS_TrackNumerator and
    //  PKEY_GPS_TrackDenominator.
    PKEY_GPS_Track: TPROPERTYKEY = (fmtid: '{76C09943-7C33-49E3-9E7E-CDBA872CFADA}'; pid: 100);

    //  Name:     System.GPS.TrackDenominator -- PKEY_GPS_TrackDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {C8D1920C-01F6-40C0-AC86-2F3A4AD00770}, 100

    //  Denominator of PKEY_GPS_Track
    PKEY_GPS_TrackDenominator: TPROPERTYKEY = (fmtid: '{C8D1920C-01F6-40C0-AC86-2F3A4AD00770}'; pid: 100);

    //  Name:     System.GPS.TrackNumerator -- PKEY_GPS_TrackNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {702926F4-44A6-43E1-AE71-45627116893B}, 100

    //  Numerator of PKEY_GPS_Track
    PKEY_GPS_TrackNumerator: TPROPERTYKEY = (fmtid: '{702926F4-44A6-43E1-AE71-45627116893B}'; pid: 100);

    //  Name:     System.GPS.TrackRef -- PKEY_GPS_TrackRef
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {35DBE6FE-44C3-4400-AAAE-D2C799C407E8}, 100

    //  Indicates reference for the direction of the GPS receiver movement.  (eg: true direction, magnetic direction)
    PKEY_GPS_TrackRef: TPROPERTYKEY = (fmtid: '{35DBE6FE-44C3-4400-AAAE-D2C799C407E8}'; pid: 100);

    //  Name:     System.GPS.VersionID -- PKEY_GPS_VersionID
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: {22704DA4-C6B2-4A99-8E56-F16DF8C92599}, 100

    //  Indicates the version of the GPS information
    PKEY_GPS_VersionID: TPROPERTYKEY = (fmtid: '{22704DA4-C6B2-4A99-8E56-F16DF8C92599}'; pid: 100);

    //-----------------------------------------------------------------------------
    // History properties

    //  Name:     System.History.VisitCount -- PKEY_History_VisitCount
    //  Type:     Int32 -- VT_I4
    //  FormatID: {5CBF2787-48CF-4208-B90E-EE5E5D420294}, 7  (PKEYs relating to URLs.  Used by IE History.)
    PKEY_History_VisitCount: TPROPERTYKEY = (fmtid: '{5CBF2787-48CF-4208-B90E-EE5E5D420294}'; pid: 7);

    //-----------------------------------------------------------------------------
    // Image properties

    //  Name:     System.Image.BitDepth -- PKEY_Image_BitDepth
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (PSGUID_IMAGESUMMARYINFORMATION) {6444048F-4C8B-11D1-8B70-080036B11A03}, 7 (PIDISI_BITDEPTH)


    PKEY_Image_BitDepth: TPROPERTYKEY = (fmtid: '{6444048F-4C8B-11D1-8B70-080036B11A03}'; pid: 7);

    //  Name:     System.Image.ColorSpace -- PKEY_Image_ColorSpace
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 40961

    //  PropertyTagExifColorSpace
    PKEY_Image_ColorSpace: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 40961);

    // Possible discrete values for PKEY_Image_ColorSpace are:
    IMAGE_COLORSPACE_SRGB = 1;
    IMAGE_COLORSPACE_UNCALIBRATED = $FFFF;

    //  Name:     System.Image.CompressedBitsPerPixel -- PKEY_Image_CompressedBitsPerPixel
    //  Type:     Double -- VT_R8
    //  FormatID: {364B6FA9-37AB-482A-BE2B-AE02F60D4318}, 100

    //  Calculated from PKEY_Image_CompressedBitsPerPixelNumerator and PKEY_Image_CompressedBitsPerPixelDenominator.
    PKEY_Image_CompressedBitsPerPixel: TPROPERTYKEY = (fmtid: '{364B6FA9-37AB-482A-BE2B-AE02F60D4318}'; pid: 100);

    //  Name:     System.Image.CompressedBitsPerPixelDenominator -- PKEY_Image_CompressedBitsPerPixelDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {1F8844E1-24AD-4508-9DFD-5326A415CE02}, 100

    //  Denominator of PKEY_Image_CompressedBitsPerPixel.
    PKEY_Image_CompressedBitsPerPixelDenominator: TPROPERTYKEY = (fmtid: '{1F8844E1-24AD-4508-9DFD-5326A415CE02}'; pid: 100);

    //  Name:     System.Image.CompressedBitsPerPixelNumerator -- PKEY_Image_CompressedBitsPerPixelNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {D21A7148-D32C-4624-8900-277210F79C0F}, 100

    //  Numerator of PKEY_Image_CompressedBitsPerPixel.
    PKEY_Image_CompressedBitsPerPixelNumerator: TPROPERTYKEY = (fmtid: '{D21A7148-D32C-4624-8900-277210F79C0F}'; pid: 100);

    //  Name:     System.Image.Compression -- PKEY_Image_Compression
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 259

    //  Indicates the image compression level.  PropertyTagCompression.
    PKEY_Image_Compression: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 259);

    // Possible discrete values for PKEY_Image_Compression are:
    IMAGE_COMPRESSION_UNCOMPRESSED = 1;
    IMAGE_COMPRESSION_CCITT_T3 = 2;
    IMAGE_COMPRESSION_CCITT_T4 = 3;
    IMAGE_COMPRESSION_CCITT_T6 = 4;
    IMAGE_COMPRESSION_LZW = 5;
    IMAGE_COMPRESSION_JPEG = 6;
    IMAGE_COMPRESSION_PACKBITS = 32773;

    //  Name:     System.Image.CompressionText -- PKEY_Image_CompressionText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {3F08E66F-2F44-4BB9-A682-AC35D2562322}, 100

    //  This is the user-friendly form of System.Image.Compression.  Not intended to be parsed
    //  programmatically.
    PKEY_Image_CompressionText: TPROPERTYKEY = (fmtid: '{3F08E66F-2F44-4BB9-A682-AC35D2562322}'; pid: 100);

    //  Name:     System.Image.Dimensions -- PKEY_Image_Dimensions
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_IMAGESUMMARYINFORMATION) {6444048F-4C8B-11D1-8B70-080036B11A03}, 13 (PIDISI_DIMENSIONS)

    //  Indicates the dimensions of the image.
    PKEY_Image_Dimensions: TPROPERTYKEY = (fmtid: '{6444048F-4C8B-11D1-8B70-080036B11A03}'; pid: 13);

    //  Name:     System.Image.HorizontalResolution -- PKEY_Image_HorizontalResolution
    //  Type:     Double -- VT_R8
    //  FormatID: (PSGUID_IMAGESUMMARYINFORMATION) {6444048F-4C8B-11D1-8B70-080036B11A03}, 5 (PIDISI_RESOLUTIONX)


    PKEY_Image_HorizontalResolution: TPROPERTYKEY = (fmtid: '{6444048F-4C8B-11D1-8B70-080036B11A03}'; pid: 5);

    //  Name:     System.Image.HorizontalSize -- PKEY_Image_HorizontalSize
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (PSGUID_IMAGESUMMARYINFORMATION) {6444048F-4C8B-11D1-8B70-080036B11A03}, 3 (PIDISI_CX)


    PKEY_Image_HorizontalSize: TPROPERTYKEY = (fmtid: '{6444048F-4C8B-11D1-8B70-080036B11A03}'; pid: 3);

    //  Name:     System.Image.ImageID -- PKEY_Image_ImageID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {10DABE05-32AA-4C29-BF1A-63E2D220587F}, 100
    PKEY_Image_ImageID: TPROPERTYKEY = (fmtid: '{10DABE05-32AA-4C29-BF1A-63E2D220587F}'; pid: 100);

    //  Name:     System.Image.ResolutionUnit -- PKEY_Image_ResolutionUnit
    //  Type:     Int16 -- VT_I2
    //  FormatID: {19B51FA6-1F92-4A5C-AB48-7DF0ABD67444}, 100
    PKEY_Image_ResolutionUnit: TPROPERTYKEY = (fmtid: '{19B51FA6-1F92-4A5C-AB48-7DF0ABD67444}'; pid: 100);

    //  Name:     System.Image.VerticalResolution -- PKEY_Image_VerticalResolution
    //  Type:     Double -- VT_R8
    //  FormatID: (PSGUID_IMAGESUMMARYINFORMATION) {6444048F-4C8B-11D1-8B70-080036B11A03}, 6 (PIDISI_RESOLUTIONY)


    PKEY_Image_VerticalResolution: TPROPERTYKEY = (fmtid: '{6444048F-4C8B-11D1-8B70-080036B11A03}'; pid: 6);

    //  Name:     System.Image.VerticalSize -- PKEY_Image_VerticalSize
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (PSGUID_IMAGESUMMARYINFORMATION) {6444048F-4C8B-11D1-8B70-080036B11A03}, 4 (PIDISI_CY)


    PKEY_Image_VerticalSize: TPROPERTYKEY = (fmtid: '{6444048F-4C8B-11D1-8B70-080036B11A03}'; pid: 4);

    //-----------------------------------------------------------------------------
    // Journal properties

    //  Name:     System.Journal.Contacts -- PKEY_Journal_Contacts
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {DEA7C82C-1D89-4A66-9427-A4E3DEBABCB1}, 100
    PKEY_Journal_Contacts: TPROPERTYKEY = (fmtid: '{DEA7C82C-1D89-4A66-9427-A4E3DEBABCB1}'; pid: 100);

    //  Name:     System.Journal.EntryType -- PKEY_Journal_EntryType
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {95BEB1FC-326D-4644-B396-CD3ED90E6DDF}, 100
    PKEY_Journal_EntryType: TPROPERTYKEY = (fmtid: '{95BEB1FC-326D-4644-B396-CD3ED90E6DDF}'; pid: 100);

    //-----------------------------------------------------------------------------
    // LayoutPattern properties

    //  Name:     System.LayoutPattern.ContentViewModeForBrowse -- PKEY_LayoutPattern_ContentViewModeForBrowse
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 500

    //  Specifies the layout pattern that the content view mode should apply for this item in the context of browsing.
    //  Register the regvalue under the name of "ContentViewModeLayoutPatternForBrowse".
    PKEY_LayoutPattern_ContentViewModeForBrowse: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 500);

    // Possible discrete values for PKEY_LayoutPattern_ContentViewModeForBrowse are:
    LAYOUTPATTERN_CVMFB_ALPHA = WideString('alpha');
    LAYOUTPATTERN_CVMFB_BETA = WideString('beta');
    LAYOUTPATTERN_CVMFB_GAMMA = WideString('gamma');
    LAYOUTPATTERN_CVMFB_DELTA = WideString('delta');

    //  Name:     System.LayoutPattern.ContentViewModeForSearch -- PKEY_LayoutPattern_ContentViewModeForSearch
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 501

    //  Specifies the layout pattern that the content view mode should apply for this item in the context of searching.
    //  Register the regvalue under the name of "ContentViewModeLayoutPatternForSearch".
    PKEY_LayoutPattern_ContentViewModeForSearch: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 501);

    // Possible discrete values for PKEY_LayoutPattern_ContentViewModeForSearch are:
    LAYOUTPATTERN_CVMFS_ALPHA = WideString('alpha');
    LAYOUTPATTERN_CVMFS_BETA = WideString('beta');
    LAYOUTPATTERN_CVMFS_GAMMA = WideString('gamma');
    LAYOUTPATTERN_CVMFS_DELTA = WideString('delta');

    //-----------------------------------------------------------------------------
    // Link properties

    //  Name:     System.History.SelectionCount -- PKEY_History_SelectionCount
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {1CE0D6BC-536C-4600-B0DD-7E0C66B350D5}, 8

    //  The count of instances the user has selected the item.
    PKEY_History_SelectionCount: TPROPERTYKEY = (fmtid: '{1CE0D6BC-536C-4600-B0DD-7E0C66B350D5}'; pid: 8);

    //  Name:     System.History.TargetUrlHostName -- PKEY_History_TargetUrlHostName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {1CE0D6BC-536C-4600-B0DD-7E0C66B350D5}, 9

    //  Mark of the Web zone, as URLZONE enumeration value.
    PKEY_History_TargetUrlHostName: TPROPERTYKEY = (fmtid: '{1CE0D6BC-536C-4600-B0DD-7E0C66B350D5}'; pid: 9);

    //  Name:     System.Link.Arguments -- PKEY_Link_Arguments
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {436F2667-14E2-4FEB-B30A-146C53B5B674}, 100
    PKEY_Link_Arguments: TPROPERTYKEY = (fmtid: '{436F2667-14E2-4FEB-B30A-146C53B5B674}'; pid: 100);

    //  Name:     System.Link.Comment -- PKEY_Link_Comment
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_LINK) {B9B4B3FC-2B51-4A42-B5D8-324146AFCF25}, 5
    PKEY_Link_Comment: TPROPERTYKEY = (fmtid: '{B9B4B3FC-2B51-4A42-B5D8-324146AFCF25}'; pid: 5);

    //  Name:     System.Link.DateVisited -- PKEY_Link_DateVisited
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {5CBF2787-48CF-4208-B90E-EE5E5D420294}, 23  (PKEYs relating to URLs.  Used by IE History.)
    PKEY_Link_DateVisited: TPROPERTYKEY = (fmtid: '{5CBF2787-48CF-4208-B90E-EE5E5D420294}'; pid: 23);

    //  Name:     System.Link.Description -- PKEY_Link_Description
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {5CBF2787-48CF-4208-B90E-EE5E5D420294}, 21  (PKEYs relating to URLs.  Used by IE History.)
    PKEY_Link_Description: TPROPERTYKEY = (fmtid: '{5CBF2787-48CF-4208-B90E-EE5E5D420294}'; pid: 21);

    //  Name:     System.Link.FeedItemLocalId -- PKEY_Link_FeedItemLocalId
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {8A2F99F9-3C37-465D-A8D7-69777A246D0C}, 2
    PKEY_Link_FeedItemLocalId: TPROPERTYKEY = (fmtid: '{8A2F99F9-3C37-465D-A8D7-69777A246D0C}'; pid: 2);

    //  Name:     System.Link.Status -- PKEY_Link_Status
    //  Type:     Int32 -- VT_I4
    //  FormatID: (PSGUID_LINK) {B9B4B3FC-2B51-4A42-B5D8-324146AFCF25}, 3 (PID_LINK_TARGET_TYPE)


    PKEY_Link_Status: TPROPERTYKEY = (fmtid: '{B9B4B3FC-2B51-4A42-B5D8-324146AFCF25}'; pid: 3);

    // Possible discrete values for PKEY_Link_Status are:
    LINK_STATUS_RESOLVED = 1;
    LINK_STATUS_BROKEN = 2;

    //  Name:     System.Link.TargetExtension -- PKEY_Link_TargetExtension
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {7A7D76F4-B630-4BD7-95FF-37CC51A975C9}, 2

    //  The file extension of the link target.  See System.File.Extension
    PKEY_Link_TargetExtension: TPROPERTYKEY = (fmtid: '{7A7D76F4-B630-4BD7-95FF-37CC51A975C9}'; pid: 2);

    //  Name:     System.Link.TargetParsingPath -- PKEY_Link_TargetParsingPath
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_LINK) {B9B4B3FC-2B51-4A42-B5D8-324146AFCF25}, 2 (PID_LINK_TARGET)

    //  This is the shell namespace path to the target of the link item.  This path may be passed to
    //  SHParseDisplayName to parse the path to the correct shell folder.

    //  If the target item is a file, the value is identical to System.ItemPathDisplay.

    //  If the target item cannot be accessed through the shell namespace, this value is VT_EMPTY.
    PKEY_Link_TargetParsingPath: TPROPERTYKEY = (fmtid: '{B9B4B3FC-2B51-4A42-B5D8-324146AFCF25}'; pid: 2);

    //  Name:     System.Link.TargetSFGAOFlags -- PKEY_Link_TargetSFGAOFlags
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (PSGUID_LINK) {B9B4B3FC-2B51-4A42-B5D8-324146AFCF25}, 8

    //  IShellFolder::GetAttributesOf flags for the target of a link, with SFGAO_PKEYSFGAOMASK
    //  attributes masked out.
    PKEY_Link_TargetSFGAOFlags: TPROPERTYKEY = (fmtid: '{B9B4B3FC-2B51-4A42-B5D8-324146AFCF25}'; pid: 8);

    //  Name:     System.Link.TargetUrlHostName -- PKEY_Link_TargetUrlHostName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {8A2F99F9-3C37-465D-A8D7-69777A246D0C}, 5
    PKEY_Link_TargetUrlHostName: TPROPERTYKEY = (fmtid: '{8A2F99F9-3C37-465D-A8D7-69777A246D0C}'; pid: 5);

    //  Name:     System.Link.TargetUrlPath -- PKEY_Link_TargetUrlPath
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {8A2F99F9-3C37-465D-A8D7-69777A246D0C}, 6
    PKEY_Link_TargetUrlPath: TPROPERTYKEY = (fmtid: '{8A2F99F9-3C37-465D-A8D7-69777A246D0C}'; pid: 6);

    //-----------------------------------------------------------------------------
    // Media properties

    //  Name:     System.Media.AuthorUrl -- PKEY_Media_AuthorUrl
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 32 (PIDMSI_AUTHOR_URL)


    PKEY_Media_AuthorUrl: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 32);

    //  Name:     System.Media.AverageLevel -- PKEY_Media_AverageLevel
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {09EDD5B6-B301-43C5-9990-D00302EFFD46}, 100
    PKEY_Media_AverageLevel: TPROPERTYKEY = (fmtid: '{09EDD5B6-B301-43C5-9990-D00302EFFD46}'; pid: 100);

    //  Name:     System.Media.ClassPrimaryID -- PKEY_Media_ClassPrimaryID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 13 (PIDMSI_CLASS_PRIMARY_ID)


    PKEY_Media_ClassPrimaryID: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 13);

    //  Name:     System.Media.ClassSecondaryID -- PKEY_Media_ClassSecondaryID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 14 (PIDMSI_CLASS_SECONDARY_ID)


    PKEY_Media_ClassSecondaryID: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 14);

    //  Name:     System.Media.CollectionGroupID -- PKEY_Media_CollectionGroupID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 24 (PIDMSI_COLLECTION_GROUP_ID)


    PKEY_Media_CollectionGroupID: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 24);

    //  Name:     System.Media.CollectionID -- PKEY_Media_CollectionID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 25 (PIDMSI_COLLECTION_ID)


    PKEY_Media_CollectionID: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 25);

    //  Name:     System.Media.ContentDistributor -- PKEY_Media_ContentDistributor
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 18 (PIDMSI_CONTENTDISTRIBUTOR)


    PKEY_Media_ContentDistributor: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 18);

    //  Name:     System.Media.ContentID -- PKEY_Media_ContentID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 26 (PIDMSI_CONTENT_ID)


    PKEY_Media_ContentID: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 26);

    //  Name:     System.Media.CreatorApplication -- PKEY_Media_CreatorApplication
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 27 (PIDMSI_TOOL_NAME)


    PKEY_Media_CreatorApplication: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 27);

    //  Name:     System.Media.CreatorApplicationVersion -- PKEY_Media_CreatorApplicationVersion
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 28 (PIDMSI_TOOL_VERSION)


    PKEY_Media_CreatorApplicationVersion: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 28);

    //  Name:     System.Media.DateEncoded -- PKEY_Media_DateEncoded
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {2E4B640D-5019-46D8-8881-55414CC5CAA0}, 100

    //  DateTime is in UTC (in the doc, not file system).
    PKEY_Media_DateEncoded: TPROPERTYKEY = (fmtid: '{2E4B640D-5019-46D8-8881-55414CC5CAA0}'; pid: 100);

    //  Name:     System.Media.DateReleased -- PKEY_Media_DateReleased
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {DE41CC29-6971-4290-B472-F59F2E2F31E2}, 100
    PKEY_Media_DateReleased: TPROPERTYKEY = (fmtid: '{DE41CC29-6971-4290-B472-F59F2E2F31E2}'; pid: 100);

    //  Name:     System.Media.DlnaProfileID -- PKEY_Media_DlnaProfileID
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {CFA31B45-525D-4998-BB44-3F7D81542FA4}, 100

    //  DLNA profile ID for media content, defined by DLNA standards at http://www.dlna.org
    PKEY_Media_DlnaProfileID: TPROPERTYKEY = (fmtid: '{CFA31B45-525D-4998-BB44-3F7D81542FA4}'; pid: 100);

    //  Name:     System.Media.Duration -- PKEY_Media_Duration
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: (FMTID_AudioSummaryInformation) {64440490-4C8B-11D1-8B70-080036B11A03}, 3 (PIDASI_TIMELENGTH)

    //  100ns units, not milliseconds
    PKEY_Media_Duration: TPROPERTYKEY = (fmtid: '{64440490-4C8B-11D1-8B70-080036B11A03}'; pid: 3);

    //  Name:     System.Media.DVDID -- PKEY_Media_DVDID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 15 (PIDMSI_DVDID)


    PKEY_Media_DVDID: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 15);

    //  Name:     System.Media.EncodedBy -- PKEY_Media_EncodedBy
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 36 (PIDMSI_ENCODED_BY)


    PKEY_Media_EncodedBy: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 36);

    //  Name:     System.Media.EncodingSettings -- PKEY_Media_EncodingSettings
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 37 (PIDMSI_ENCODING_SETTINGS)


    PKEY_Media_EncodingSettings: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 37);

    //  Name:     System.Media.EpisodeNumber -- PKEY_Media_EpisodeNumber
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 100

    //  A 1 based monotonically incremented number that corresponds to the episode of the show
    PKEY_Media_EpisodeNumber: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 100);

    //  Name:     System.Media.FrameCount -- PKEY_Media_FrameCount
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (PSGUID_IMAGESUMMARYINFORMATION) {6444048F-4C8B-11D1-8B70-080036B11A03}, 12 (PIDISI_FRAMECOUNT)

    //  Indicates the frame count for the image.
    PKEY_Media_FrameCount: TPROPERTYKEY = (fmtid: '{6444048F-4C8B-11D1-8B70-080036B11A03}'; pid: 12);

    //  Name:     System.Media.MCDI -- PKEY_Media_MCDI
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 16 (PIDMSI_MCDI)


    PKEY_Media_MCDI: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 16);

    //  Name:     System.Media.MetadataContentProvider -- PKEY_Media_MetadataContentProvider
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 17 (PIDMSI_PROVIDER)


    PKEY_Media_MetadataContentProvider: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 17);

    //  Name:     System.Media.Producer -- PKEY_Media_Producer
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 22 (PIDMSI_PRODUCER)


    PKEY_Media_Producer: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 22);

    //  Name:     System.Media.PromotionUrl -- PKEY_Media_PromotionUrl
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 33 (PIDMSI_PROMOTION_URL)


    PKEY_Media_PromotionUrl: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 33);

    //  Name:     System.Media.ProtectionType -- PKEY_Media_ProtectionType
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 38

    //  If media is protected, how is it protected?
    PKEY_Media_ProtectionType: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 38);

    //  Name:     System.Media.ProviderRating -- PKEY_Media_ProviderRating
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 39

    //  Rating (0 - 99) supplied by metadata provider
    PKEY_Media_ProviderRating: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 39);

    //  Name:     System.Media.ProviderStyle -- PKEY_Media_ProviderStyle
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 40

    //  Style of music or video, supplied by metadata provider
    PKEY_Media_ProviderStyle: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 40);

    //  Name:     System.Media.Publisher -- PKEY_Media_Publisher
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 30 (PIDMSI_PUBLISHER)


    PKEY_Media_Publisher: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 30);

    //  Name:     System.Media.SeasonNumber -- PKEY_Media_SeasonNumber
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 101

    //  A 1 based monotonically incremented number that corresponds to the season that the show was first presented
    PKEY_Media_SeasonNumber: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 101);

    //  Name:     System.Media.SeriesName -- PKEY_Media_SeriesName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 42

    //  A name that represents a specific series, such as a podcast or recorded television series.
    PKEY_Media_SeriesName: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 42);

    //  Name:     System.Media.SubscriptionContentId -- PKEY_Media_SubscriptionContentId
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {9AEBAE7A-9644-487D-A92C-657585ED751A}, 100
    PKEY_Media_SubscriptionContentId: TPROPERTYKEY = (fmtid: '{9AEBAE7A-9644-487D-A92C-657585ED751A}'; pid: 100);

    //  Name:     System.Media.SubTitle -- PKEY_Media_SubTitle
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 38 (PIDSI_MUSIC_SUB_TITLE)


    PKEY_Media_SubTitle: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 38);

    //  Name:     System.Media.ThumbnailLargePath -- PKEY_Media_ThumbnailLargePath
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 47

    //  Filesystem path to the large thumbnail representation of the media item.
    PKEY_Media_ThumbnailLargePath: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 47);

    //  Name:     System.Media.ThumbnailLargeUri -- PKEY_Media_ThumbnailLargeUri
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 48

    //  Uri of the large thumbnail representation of the media item.
    PKEY_Media_ThumbnailLargeUri: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 48);

    //  Name:     System.Media.ThumbnailSmallPath -- PKEY_Media_ThumbnailSmallPath
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 49

    //  Filesystem path to the large thumbnail representation of the media item.
    PKEY_Media_ThumbnailSmallPath: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 49);

    //  Name:     System.Media.ThumbnailSmallUri -- PKEY_Media_ThumbnailSmallUri
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 50

    //  Uri of the large thumbnail representation of the media item.
    PKEY_Media_ThumbnailSmallUri: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 50);

    //  Name:     System.Media.UniqueFileIdentifier -- PKEY_Media_UniqueFileIdentifier
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 35 (PIDMSI_UNIQUE_FILE_IDENTIFIER)


    PKEY_Media_UniqueFileIdentifier: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 35);

    //  Name:     System.Media.UserNoAutoInfo -- PKEY_Media_UserNoAutoInfo
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 41

    //  If true, do NOT alter this file's metadata. Set by user.
    PKEY_Media_UserNoAutoInfo: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 41);

    //  Name:     System.Media.UserWebUrl -- PKEY_Media_UserWebUrl
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 34 (PIDMSI_USER_WEB_URL)


    PKEY_Media_UserWebUrl: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 34);

    //  Name:     System.Media.Writer -- PKEY_Media_Writer
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 23 (PIDMSI_WRITER)


    PKEY_Media_Writer: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 23);

    //  Name:     System.Media.Year -- PKEY_Media_Year
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 5 (PIDSI_MUSIC_YEAR)


    PKEY_Media_Year: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 5);

    //-----------------------------------------------------------------------------
    // Message properties

    //  Name:     System.Message.AttachmentContents -- PKEY_Message_AttachmentContents
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {3143BF7C-80A8-4854-8880-E2E40189BDD0}, 100
    PKEY_Message_AttachmentContents: TPROPERTYKEY = (fmtid: '{3143BF7C-80A8-4854-8880-E2E40189BDD0}'; pid: 100);

    //  Name:     System.Message.AttachmentNames -- PKEY_Message_AttachmentNames
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 21

    //  The names of the attachments in a message
    PKEY_Message_AttachmentNames: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 21);

    //  Name:     System.Message.BccAddress -- PKEY_Message_BccAddress
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 2

    //  Addresses in Bcc: field
    PKEY_Message_BccAddress: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 2);

    //  Name:     System.Message.BccName -- PKEY_Message_BccName
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 3

    //  person names in Bcc: field
    PKEY_Message_BccName: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 3);

    //  Name:     System.Message.CcAddress -- PKEY_Message_CcAddress
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 4

    //  Addresses in Cc: field
    PKEY_Message_CcAddress: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 4);

    //  Name:     System.Message.CcName -- PKEY_Message_CcName
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 5

    //  person names in Cc: field
    PKEY_Message_CcName: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 5);

    //  Name:     System.Message.ConversationID -- PKEY_Message_ConversationID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {DC8F80BD-AF1E-4289-85B6-3DFC1B493992}, 100
    PKEY_Message_ConversationID: TPROPERTYKEY = (fmtid: '{DC8F80BD-AF1E-4289-85B6-3DFC1B493992}'; pid: 100);

    //  Name:     System.Message.ConversationIndex -- PKEY_Message_ConversationIndex
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: {DC8F80BD-AF1E-4289-85B6-3DFC1B493992}, 101


    PKEY_Message_ConversationIndex: TPROPERTYKEY = (fmtid: '{DC8F80BD-AF1E-4289-85B6-3DFC1B493992}'; pid: 101);

    //  Name:     System.Message.DateReceived -- PKEY_Message_DateReceived
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 20

    //  Date and Time communication was received
    PKEY_Message_DateReceived: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 20);

    //  Name:     System.Message.DateSent -- PKEY_Message_DateSent
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 19

    //  Date and Time communication was sent
    PKEY_Message_DateSent: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 19);

    //  Name:     System.Message.Flags -- PKEY_Message_Flags
    //  Type:     Int32 -- VT_I4
    //  FormatID: {A82D9EE7-CA67-4312-965E-226BCEA85023}, 100

    //  These are flags associated with email messages to know if a read receipt is pending, etc.
    //  The values stored here by Outlook are defined for PR_MESSAGE_FLAGS on MSDN.
    PKEY_Message_Flags: TPROPERTYKEY = (fmtid: '{A82D9EE7-CA67-4312-965E-226BCEA85023}'; pid: 100);

    //  Name:     System.Message.FromAddress -- PKEY_Message_FromAddress
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 13
    PKEY_Message_FromAddress: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 13);

    //  Name:     System.Message.FromName -- PKEY_Message_FromName
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 14

    //  Address in from field as person name
    PKEY_Message_FromName: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 14);

    //  Name:     System.Message.HasAttachments -- PKEY_Message_HasAttachments
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {9C1FCF74-2D97-41BA-B4AE-CB2E3661A6E4}, 8


    PKEY_Message_HasAttachments: TPROPERTYKEY = (fmtid: '{9C1FCF74-2D97-41BA-B4AE-CB2E3661A6E4}'; pid: 8);

    //  Name:     System.Message.IsFwdOrReply -- PKEY_Message_IsFwdOrReply
    //  Type:     Int32 -- VT_I4
    //  FormatID: {9A9BC088-4F6D-469E-9919-E705412040F9}, 100
    PKEY_Message_IsFwdOrReply: TPROPERTYKEY = (fmtid: '{9A9BC088-4F6D-469E-9919-E705412040F9}'; pid: 100);

    //  Name:     System.Message.MessageClass -- PKEY_Message_MessageClass
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {CD9ED458-08CE-418F-A70E-F912C7BB9C5C}, 103

    //  What type of outlook msg this is (meeting, task, mail, etc.)
    PKEY_Message_MessageClass: TPROPERTYKEY = (fmtid: '{CD9ED458-08CE-418F-A70E-F912C7BB9C5C}'; pid: 103);

    //  Name:     System.Message.Participants -- PKEY_Message_Participants
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {1A9BA605-8E7C-4D11-AD7D-A50ADA18BA1B}, 2

    //  Participants in communication.
    PKEY_Message_Participants: TPROPERTYKEY = (fmtid: '{1A9BA605-8E7C-4D11-AD7D-A50ADA18BA1B}'; pid: 2);

    //  Name:     System.Message.ProofInProgress -- PKEY_Message_ProofInProgress
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {9098F33C-9A7D-48A8-8DE5-2E1227A64E91}, 100

    //  This property will be true if the message junk email proofing is still in progress.
    PKEY_Message_ProofInProgress: TPROPERTYKEY = (fmtid: '{9098F33C-9A7D-48A8-8DE5-2E1227A64E91}'; pid: 100);

    //  Name:     System.Message.SenderAddress -- PKEY_Message_SenderAddress
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {0BE1C8E7-1981-4676-AE14-FDD78F05A6E7}, 100
    PKEY_Message_SenderAddress: TPROPERTYKEY = (fmtid: '{0BE1C8E7-1981-4676-AE14-FDD78F05A6E7}'; pid: 100);

    //  Name:     System.Message.SenderName -- PKEY_Message_SenderName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {0DA41CFA-D224-4A18-AE2F-596158DB4B3A}, 100
    PKEY_Message_SenderName: TPROPERTYKEY = (fmtid: '{0DA41CFA-D224-4A18-AE2F-596158DB4B3A}'; pid: 100);

    //  Name:     System.Message.Store -- PKEY_Message_Store
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 15

    //  The store (aka protocol handler) FILE, MAIL, OUTLOOKEXPRESS
    PKEY_Message_Store: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 15);

    //  Name:     System.Message.ToAddress -- PKEY_Message_ToAddress
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 16

    //  Addresses in To: field
    PKEY_Message_ToAddress: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 16);

    //  Name:     System.Message.ToDoFlags -- PKEY_Message_ToDoFlags
    //  Type:     Int32 -- VT_I4
    //  FormatID: {1F856A9F-6900-4ABA-9505-2D5F1B4D66CB}, 100

    //  Flags associated with a message flagged to know if it's still active, if it was custom flagged, etc.
    PKEY_Message_ToDoFlags: TPROPERTYKEY = (fmtid: '{1F856A9F-6900-4ABA-9505-2D5F1B4D66CB}'; pid: 100);

    //  Name:     System.Message.ToDoTitle -- PKEY_Message_ToDoTitle
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {BCCC8A3C-8CEF-42E5-9B1C-C69079398BC7}, 100
    PKEY_Message_ToDoTitle: TPROPERTYKEY = (fmtid: '{BCCC8A3C-8CEF-42E5-9B1C-C69079398BC7}'; pid: 100);

    //  Name:     System.Message.ToName -- PKEY_Message_ToName
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}, 17

    //  Person names in To: field
    PKEY_Message_ToName: TPROPERTYKEY = (fmtid: '{E3E0584C-B788-4A5A-BB20-7F5A44C9ACDD}'; pid: 17);

    //-----------------------------------------------------------------------------
    // Music properties

    //  Name:     System.Music.AlbumArtist -- PKEY_Music_AlbumArtist
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 13 (PIDSI_MUSIC_ALBUM_ARTIST)


    PKEY_Music_AlbumArtist: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 13);

    //  Name:     System.Music.AlbumArtistSortOverride -- PKEY_Music_AlbumArtistSortOverride
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {F1FDB4AF-F78C-466C-BB05-56E92DB0B8EC}, 103 (PIDSI_MUSIC_ALBUM_ARTIST_SORT_OVERRIDE)

    //  This optional string value allows for overriding the standard sort order of System.Music.AlbumArtist.
    //  This is very important for proper sorting of music files in Japanese which cannot be
    //  correctly sorted phonetically (the user-expected ordering) without this field.
    //  It can also be used for customizing sorting in non-East Asian scenarios,
    //  such as allowing the user to remove articles for sorting purposes.
    PKEY_Music_AlbumArtistSortOverride: TPROPERTYKEY = (fmtid: '{F1FDB4AF-F78C-466C-BB05-56E92DB0B8EC}'; pid: 103);

    //  Name:     System.Music.AlbumID -- PKEY_Music_AlbumID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 100

    //  Concatenation of System.Music.AlbumArtist and System.Music.AlbumTitle, suitable for indexing and display.
    //  Used to differentiate albums with the same title from different artists.
    PKEY_Music_AlbumID: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 100);

    //  Name:     System.Music.AlbumTitle -- PKEY_Music_AlbumTitle
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 4 (PIDSI_MUSIC_ALBUM)


    PKEY_Music_AlbumTitle: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 4);

    //  Name:     System.Music.AlbumTitleSortOverride -- PKEY_Music_AlbumTitleSortOverride
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {13EB7FFC-EC89-4346-B19D-CCC6F1784223}, 101 (PIDSI_MUSIC_ALBUM_TITLE_SORT_OVERRIDE)

    //  This optional string value allows for overriding the standard sort order of System.Music.Album.
    //  This is very important for proper sorting of music files in Japanese which cannot be
    //  correctly sorted phonetically (the user-expected ordering) without this field.
    //  It can also be used for customizing sorting in non-East Asian scenarios,
    //  such as allowing the user to remove articles for sorting purposes.
    PKEY_Music_AlbumTitleSortOverride: TPROPERTYKEY = (fmtid: '{13EB7FFC-EC89-4346-B19D-CCC6F1784223}'; pid: 101);

    //  Name:     System.Music.Artist -- PKEY_Music_Artist
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 2 (PIDSI_MUSIC_ARTIST)


    PKEY_Music_Artist: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 2);

    //  Name:     System.Music.ArtistSortOverride -- PKEY_Music_ArtistSortOverride
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {DEEB2DB5-0696-4CE0-94FE-A01F77A45FB5}, 102 (PIDSI_MUSIC_ARTIST_SORT_OVERRIDE)

    //  This optional string value allows for overriding the standard sort order of System.Music.Artist.
    //  This is very important for proper sorting of music files in Japanese which cannot be
    //  correctly sorted phonetically (the user-expected ordering) without this field.
    //  It can also be used for customizing sorting in non-East Asian scenarios,
    //  such as allowing the user to remove articles for sorting purposes.
    PKEY_Music_ArtistSortOverride: TPROPERTYKEY = (fmtid: '{DEEB2DB5-0696-4CE0-94FE-A01F77A45FB5}'; pid: 102);

    //  Name:     System.Music.BeatsPerMinute -- PKEY_Music_BeatsPerMinute
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 35 (PIDSI_MUSIC_BEATS_PER_MINUTE)


    PKEY_Music_BeatsPerMinute: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 35);

    //  Name:     System.Music.Composer -- PKEY_Music_Composer
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 19 (PIDMSI_COMPOSER)


    PKEY_Music_Composer: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 19);

    //  Name:     System.Music.ComposerSortOverride -- PKEY_Music_ComposerSortOverride
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {00BC20A3-BD48-4085-872C-A88D77F5097E}, 105 (PIDSI_COMPOSER_SORT_OVERRIDE)

    //  This optional string value allows for overriding the standard sort order of System.Music.Composer.
    //  This is very important for proper sorting of music files in Japanese which cannot be
    //  correctly sorted phonetically (the user-expected ordering) without this field.
    //  It can also be used for customizing sorting in non-East Asian scenarios,
    //  such as allowing the user to remove articles for sorting purposes.
    PKEY_Music_ComposerSortOverride: TPROPERTYKEY = (fmtid: '{00BC20A3-BD48-4085-872C-A88D77F5097E}'; pid: 105);

    //  Name:     System.Music.Conductor -- PKEY_Music_Conductor
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 36 (PIDSI_MUSIC_CONDUCTOR)


    PKEY_Music_Conductor: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 36);

    //  Name:     System.Music.ContentGroupDescription -- PKEY_Music_ContentGroupDescription
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 33 (PIDSI_MUSIC_CONTENT_GROUP_DESCRIPTION)


    PKEY_Music_ContentGroupDescription: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 33);

    //  Name:     System.Music.DiscNumber -- PKEY_Music_DiscNumber
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {6AFE7437-9BCD-49C7-80FE-4A5C65FA5874}, 104
    PKEY_Music_DiscNumber: TPROPERTYKEY = (fmtid: '{6AFE7437-9BCD-49C7-80FE-4A5C65FA5874}'; pid: 104);

    //  Name:     System.Music.DisplayArtist -- PKEY_Music_DisplayArtist
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FD122953-FA93-4EF7-92C3-04C946B2F7C8}, 100

    //  This property returns the best representation of Album Artist for a given music file
    //  based upon AlbumArtist, ContributingArtist and compilation info.
    PKEY_Music_DisplayArtist: TPROPERTYKEY = (fmtid: '{FD122953-FA93-4EF7-92C3-04C946B2F7C8}'; pid: 100);

    //  Name:     System.Music.Genre -- PKEY_Music_Genre
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 11 (PIDSI_MUSIC_GENRE)


    PKEY_Music_Genre: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 11);

    //  Name:     System.Music.InitialKey -- PKEY_Music_InitialKey
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 34 (PIDSI_MUSIC_INITIAL_KEY)


    PKEY_Music_InitialKey: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 34);

    //  Name:     System.Music.IsCompilation -- PKEY_Music_IsCompilation
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {C449D5CB-9EA4-4809-82E8-AF9D59DED6D1}, 100

    //  Indicates whether the file is part of a compilation.
    PKEY_Music_IsCompilation: TPROPERTYKEY = (fmtid: '{C449D5CB-9EA4-4809-82E8-AF9D59DED6D1}'; pid: 100);

    //  Name:     System.Music.Lyrics -- PKEY_Music_Lyrics
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 12 (PIDSI_MUSIC_LYRICS)


    PKEY_Music_Lyrics: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 12);

    //  Name:     System.Music.Mood -- PKEY_Music_Mood
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 39 (PIDSI_MUSIC_MOOD)


    PKEY_Music_Mood: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 39);

    //  Name:     System.Music.PartOfSet -- PKEY_Music_PartOfSet
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 37 (PIDSI_MUSIC_PART_OF_SET)


    PKEY_Music_PartOfSet: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 37);

    //  Name:     System.Music.Period -- PKEY_Music_Period
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 31 (PIDMSI_PERIOD)


    PKEY_Music_Period: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 31);

    //  Name:     System.Music.SynchronizedLyrics -- PKEY_Music_SynchronizedLyrics
    //  Type:     Blob -- VT_BLOB
    //  FormatID: {6B223B6A-162E-4AA9-B39F-05D678FC6D77}, 100
    PKEY_Music_SynchronizedLyrics: TPROPERTYKEY = (fmtid: '{6B223B6A-162E-4AA9-B39F-05D678FC6D77}'; pid: 100);

    //  Name:     System.Music.TrackNumber -- PKEY_Music_TrackNumber
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_MUSIC) {56A3372E-CE9C-11D2-9F0E-006097C686F6}, 7 (PIDSI_MUSIC_TRACK)


    PKEY_Music_TrackNumber: TPROPERTYKEY = (fmtid: '{56A3372E-CE9C-11D2-9F0E-006097C686F6}'; pid: 7);

    //-----------------------------------------------------------------------------
    // Note properties

    //  Name:     System.Note.Color -- PKEY_Note_Color
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {4776CAFA-BCE4-4CB1-A23E-265E76D8EB11}, 100
    PKEY_Note_Color: TPROPERTYKEY = (fmtid: '{4776CAFA-BCE4-4CB1-A23E-265E76D8EB11}'; pid: 100);

    // Possible discrete values for PKEY_Note_Color are:
    NOTE_COLOR_BLUE = 0;
    NOTE_COLOR_GREEN = 1;
    NOTE_COLOR_PINK = 2;
    NOTE_COLOR_YELLOW = 3;
    NOTE_COLOR_WHITE = 4;
    NOTE_COLOR_LIGHTGREEN = 5;

    //  Name:     System.Note.ColorText -- PKEY_Note_ColorText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {46B4E8DE-CDB2-440D-885C-1658EB65B914}, 100

    //  This is the user-friendly form of System.Note.Color.  Not intended to be parsed
    //  programmatically.
    PKEY_Note_ColorText: TPROPERTYKEY = (fmtid: '{46B4E8DE-CDB2-440D-885C-1658EB65B914}'; pid: 100);

    //-----------------------------------------------------------------------------
    // Photo properties

    //  Name:     System.Photo.Aperture -- PKEY_Photo_Aperture
    //  Type:     Double -- VT_R8
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 37378

    //  PropertyTagExifAperture.  Calculated from PKEY_Photo_ApertureNumerator and PKEY_Photo_ApertureDenominator
    PKEY_Photo_Aperture: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 37378);

    //  Name:     System.Photo.ApertureDenominator -- PKEY_Photo_ApertureDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {E1A9A38B-6685-46BD-875E-570DC7AD7320}, 100

    //  Denominator of PKEY_Photo_Aperture
    PKEY_Photo_ApertureDenominator: TPROPERTYKEY = (fmtid: '{E1A9A38B-6685-46BD-875E-570DC7AD7320}'; pid: 100);

    //  Name:     System.Photo.ApertureNumerator -- PKEY_Photo_ApertureNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {0337ECEC-39FB-4581-A0BD-4C4CC51E9914}, 100

    //  Numerator of PKEY_Photo_Aperture
    PKEY_Photo_ApertureNumerator: TPROPERTYKEY = (fmtid: '{0337ECEC-39FB-4581-A0BD-4C4CC51E9914}'; pid: 100);

    //  Name:     System.Photo.Brightness -- PKEY_Photo_Brightness
    //  Type:     Double -- VT_R8
    //  FormatID: {1A701BF6-478C-4361-83AB-3701BB053C58}, 100 (PropertyTagExifBrightness)

    //  This is the brightness of the photo.

    //  Calculated from PKEY_Photo_BrightnessNumerator and PKEY_Photo_BrightnessDenominator.

    //  The units are "APEX", normally in the range of -99.99 to 99.99. If the numerator of
    //  the recorded value is FFFFFFFF.H, "Unknown" should be indicated.
    PKEY_Photo_Brightness: TPROPERTYKEY = (fmtid: '{1A701BF6-478C-4361-83AB-3701BB053C58}'; pid: 100);

    //  Name:     System.Photo.BrightnessDenominator -- PKEY_Photo_BrightnessDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {6EBE6946-2321-440A-90F0-C043EFD32476}, 100

    //  Denominator of PKEY_Photo_Brightness
    PKEY_Photo_BrightnessDenominator: TPROPERTYKEY = (fmtid: '{6EBE6946-2321-440A-90F0-C043EFD32476}'; pid: 100);

    //  Name:     System.Photo.BrightnessNumerator -- PKEY_Photo_BrightnessNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {9E7D118F-B314-45A0-8CFB-D654B917C9E9}, 100

    //  Numerator of PKEY_Photo_Brightness
    PKEY_Photo_BrightnessNumerator: TPROPERTYKEY = (fmtid: '{9E7D118F-B314-45A0-8CFB-D654B917C9E9}'; pid: 100);

    //  Name:     System.Photo.CameraManufacturer -- PKEY_Photo_CameraManufacturer
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 271 (PropertyTagEquipMake)


    PKEY_Photo_CameraManufacturer: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 271);

    //  Name:     System.Photo.CameraModel -- PKEY_Photo_CameraModel
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 272 (PropertyTagEquipModel)


    PKEY_Photo_CameraModel: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 272);

    //  Name:     System.Photo.CameraSerialNumber -- PKEY_Photo_CameraSerialNumber
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 273

    //  Serial number of camera that produced this photo
    PKEY_Photo_CameraSerialNumber: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 273);

    //  Name:     System.Photo.Contrast -- PKEY_Photo_Contrast
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {2A785BA9-8D23-4DED-82E6-60A350C86A10}, 100

    //  This indicates the direction of contrast processing applied by the camera
    //  when the image was shot.
    PKEY_Photo_Contrast: TPROPERTYKEY = (fmtid: '{2A785BA9-8D23-4DED-82E6-60A350C86A10}'; pid: 100);

    // Possible discrete values for PKEY_Photo_Contrast are:
    PHOTO_CONTRAST_NORMAL = 0;
    PHOTO_CONTRAST_SOFT = 1;
    PHOTO_CONTRAST_HARD = 2;

    //  Name:     System.Photo.ContrastText -- PKEY_Photo_ContrastText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {59DDE9F2-5253-40EA-9A8B-479E96C6249A}, 100

    //  This is the user-friendly form of System.Photo.Contrast.  Not intended to be parsed
    //  programmatically.
    PKEY_Photo_ContrastText: TPROPERTYKEY = (fmtid: '{59DDE9F2-5253-40EA-9A8B-479E96C6249A}'; pid: 100);

    //  Name:     System.Photo.DateTaken -- PKEY_Photo_DateTaken
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 36867

    //  PropertyTagExifDTOrig
    PKEY_Photo_DateTaken: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 36867);

    //  Name:     System.Photo.DigitalZoom -- PKEY_Photo_DigitalZoom
    //  Type:     Double -- VT_R8
    //  FormatID: {F85BF840-A925-4BC2-B0C4-8E36B598679E}, 100

    //  PropertyTagExifDigitalZoom.  Calculated from PKEY_Photo_DigitalZoomNumerator and PKEY_Photo_DigitalZoomDenominator
    PKEY_Photo_DigitalZoom: TPROPERTYKEY = (fmtid: '{F85BF840-A925-4BC2-B0C4-8E36B598679E}'; pid: 100);

    //  Name:     System.Photo.DigitalZoomDenominator -- PKEY_Photo_DigitalZoomDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {745BAF0E-E5C1-4CFB-8A1B-D031A0A52393}, 100

    //  Denominator of PKEY_Photo_DigitalZoom
    PKEY_Photo_DigitalZoomDenominator: TPROPERTYKEY = (fmtid: '{745BAF0E-E5C1-4CFB-8A1B-D031A0A52393}'; pid: 100);

    //  Name:     System.Photo.DigitalZoomNumerator -- PKEY_Photo_DigitalZoomNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {16CBB924-6500-473B-A5BE-F1599BCBE413}, 100

    //  Numerator of PKEY_Photo_DigitalZoom
    PKEY_Photo_DigitalZoomNumerator: TPROPERTYKEY = (fmtid: '{16CBB924-6500-473B-A5BE-F1599BCBE413}'; pid: 100);

    //  Name:     System.Photo.Event -- PKEY_Photo_Event
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 18248

    //  The event at which the photo was taken
    PKEY_Photo_Event: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 18248);

    //  Name:     System.Photo.EXIFVersion -- PKEY_Photo_EXIFVersion
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {D35F743A-EB2E-47F2-A286-844132CB1427}, 100

    //  The EXIF version.
    PKEY_Photo_EXIFVersion: TPROPERTYKEY = (fmtid: '{D35F743A-EB2E-47F2-A286-844132CB1427}'; pid: 100);

    //  Name:     System.Photo.ExposureBias -- PKEY_Photo_ExposureBias
    //  Type:     Double -- VT_R8
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 37380

    //  PropertyTagExifExposureBias.  Calculated from PKEY_Photo_ExposureBiasNumerator and PKEY_Photo_ExposureBiasDenominator
    PKEY_Photo_ExposureBias: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 37380);

    //  Name:     System.Photo.ExposureBiasDenominator -- PKEY_Photo_ExposureBiasDenominator
    //  Type:     Int32 -- VT_I4
    //  FormatID: {AB205E50-04B7-461C-A18C-2F233836E627}, 100

    //  Denominator of PKEY_Photo_ExposureBias
    PKEY_Photo_ExposureBiasDenominator: TPROPERTYKEY = (fmtid: '{AB205E50-04B7-461C-A18C-2F233836E627}'; pid: 100);

    //  Name:     System.Photo.ExposureBiasNumerator -- PKEY_Photo_ExposureBiasNumerator
    //  Type:     Int32 -- VT_I4
    //  FormatID: {738BF284-1D87-420B-92CF-5834BF6EF9ED}, 100

    //  Numerator of PKEY_Photo_ExposureBias
    PKEY_Photo_ExposureBiasNumerator: TPROPERTYKEY = (fmtid: '{738BF284-1D87-420B-92CF-5834BF6EF9ED}'; pid: 100);

    //  Name:     System.Photo.ExposureIndex -- PKEY_Photo_ExposureIndex
    //  Type:     Double -- VT_R8
    //  FormatID: {967B5AF8-995A-46ED-9E11-35B3C5B9782D}, 100

    //  PropertyTagExifExposureIndex.  Calculated from PKEY_Photo_ExposureIndexNumerator and PKEY_Photo_ExposureIndexDenominator
    PKEY_Photo_ExposureIndex: TPROPERTYKEY = (fmtid: '{967B5AF8-995A-46ED-9E11-35B3C5B9782D}'; pid: 100);

    //  Name:     System.Photo.ExposureIndexDenominator -- PKEY_Photo_ExposureIndexDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {93112F89-C28B-492F-8A9D-4BE2062CEE8A}, 100

    //  Denominator of PKEY_Photo_ExposureIndex
    PKEY_Photo_ExposureIndexDenominator: TPROPERTYKEY = (fmtid: '{93112F89-C28B-492F-8A9D-4BE2062CEE8A}'; pid: 100);

    //  Name:     System.Photo.ExposureIndexNumerator -- PKEY_Photo_ExposureIndexNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {CDEDCF30-8919-44DF-8F4C-4EB2FFDB8D89}, 100

    //  Numerator of PKEY_Photo_ExposureIndex
    PKEY_Photo_ExposureIndexNumerator: TPROPERTYKEY = (fmtid: '{CDEDCF30-8919-44DF-8F4C-4EB2FFDB8D89}'; pid: 100);

    //  Name:     System.Photo.ExposureProgram -- PKEY_Photo_ExposureProgram
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 34850 (PropertyTagExifExposureProg)


    PKEY_Photo_ExposureProgram: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 34850);

    // Possible discrete values for PKEY_Photo_ExposureProgram are:
    PHOTO_EXPOSUREPROGRAM_UNKNOWN = 0;
    PHOTO_EXPOSUREPROGRAM_MANUAL = 1;
    PHOTO_EXPOSUREPROGRAM_NORMAL = 2;
    PHOTO_EXPOSUREPROGRAM_APERTURE = 3;
    PHOTO_EXPOSUREPROGRAM_SHUTTER = 4;
    PHOTO_EXPOSUREPROGRAM_CREATIVE = 5;
    PHOTO_EXPOSUREPROGRAM_ACTION = 6;
    PHOTO_EXPOSUREPROGRAM_PORTRAIT = 7;
    PHOTO_EXPOSUREPROGRAM_LANDSCAPE = 8;

    //  Name:     System.Photo.ExposureProgramText -- PKEY_Photo_ExposureProgramText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FEC690B7-5F30-4646-AE47-4CAAFBA884A3}, 100

    //  This is the user-friendly form of System.Photo.ExposureProgram.  Not intended to be parsed
    //  programmatically.
    PKEY_Photo_ExposureProgramText: TPROPERTYKEY = (fmtid: '{FEC690B7-5F30-4646-AE47-4CAAFBA884A3}'; pid: 100);

    //  Name:     System.Photo.ExposureTime -- PKEY_Photo_ExposureTime
    //  Type:     Double -- VT_R8
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 33434

    //  PropertyTagExifExposureTime.  Calculated from  PKEY_Photo_ExposureTimeNumerator and PKEY_Photo_ExposureTimeDenominator
    PKEY_Photo_ExposureTime: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 33434);

    //  Name:     System.Photo.ExposureTimeDenominator -- PKEY_Photo_ExposureTimeDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {55E98597-AD16-42E0-B624-21599A199838}, 100

    //  Denominator of PKEY_Photo_ExposureTime
    PKEY_Photo_ExposureTimeDenominator: TPROPERTYKEY = (fmtid: '{55E98597-AD16-42E0-B624-21599A199838}'; pid: 100);

    //  Name:     System.Photo.ExposureTimeNumerator -- PKEY_Photo_ExposureTimeNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {257E44E2-9031-4323-AC38-85C552871B2E}, 100

    //  Numerator of PKEY_Photo_ExposureTime
    PKEY_Photo_ExposureTimeNumerator: TPROPERTYKEY = (fmtid: '{257E44E2-9031-4323-AC38-85C552871B2E}'; pid: 100);

    //  Name:     System.Photo.Flash -- PKEY_Photo_Flash
    //  Type:     Byte -- VT_UI1
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 37385

    //  PropertyTagExifFlash
    PKEY_Photo_Flash: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 37385);

    // Possible discrete values for PKEY_Photo_Flash are:
    PHOTO_FLASH_NONE = 0;
    PHOTO_FLASH_FLASH = 1;
    PHOTO_FLASH_WITHOUTSTROBE = 5;
    PHOTO_FLASH_WITHSTROBE = 7;
    PHOTO_FLASH_FLASH_COMPULSORY = 9;
    PHOTO_FLASH_FLASH_COMPULSORY_NORETURNLIGHT = 13;
    PHOTO_FLASH_FLASH_COMPULSORY_RETURNLIGHT = 15;
    PHOTO_FLASH_NONE_COMPULSORY = 16;
    PHOTO_FLASH_NONE_AUTO = 24;
    PHOTO_FLASH_FLASH_AUTO = 25;
    PHOTO_FLASH_FLASH_AUTO_NORETURNLIGHT = 29;
    PHOTO_FLASH_FLASH_AUTO_RETURNLIGHT = 31;
    PHOTO_FLASH_NOFUNCTION = 32;
    PHOTO_FLASH_FLASH_REDEYE = 65;
    PHOTO_FLASH_FLASH_REDEYE_NORETURNLIGHT = 69;
    PHOTO_FLASH_FLASH_REDEYE_RETURNLIGHT = 71;
    PHOTO_FLASH_FLASH_COMPULSORY_REDEYE = 73;
    PHOTO_FLASH_FLASH_COMPULSORY_REDEYE_NORETURNLIGHT = 77;
    PHOTO_FLASH_FLASH_COMPULSORY_REDEYE_RETURNLIGHT = 79;
    PHOTO_FLASH_FLASH_AUTO_REDEYE = 89;
    PHOTO_FLASH_FLASH_AUTO_REDEYE_NORETURNLIGHT = 93;
    PHOTO_FLASH_FLASH_AUTO_REDEYE_RETURNLIGHT = 95;

    //  Name:     System.Photo.FlashEnergy -- PKEY_Photo_FlashEnergy
    //  Type:     Double -- VT_R8
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 41483

    //  PropertyTagExifFlashEnergy.  Calculated from PKEY_Photo_FlashEnergyNumerator and PKEY_Photo_FlashEnergyDenominator
    PKEY_Photo_FlashEnergy: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 41483);

    //  Name:     System.Photo.FlashEnergyDenominator -- PKEY_Photo_FlashEnergyDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {D7B61C70-6323-49CD-A5FC-C84277162C97}, 100

    //  Denominator of PKEY_Photo_FlashEnergy
    PKEY_Photo_FlashEnergyDenominator: TPROPERTYKEY = (fmtid: '{D7B61C70-6323-49CD-A5FC-C84277162C97}'; pid: 100);

    //  Name:     System.Photo.FlashEnergyNumerator -- PKEY_Photo_FlashEnergyNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {FCAD3D3D-0858-400F-AAA3-2F66CCE2A6BC}, 100

    //  Numerator of PKEY_Photo_FlashEnergy
    PKEY_Photo_FlashEnergyNumerator: TPROPERTYKEY = (fmtid: '{FCAD3D3D-0858-400F-AAA3-2F66CCE2A6BC}'; pid: 100);

    //  Name:     System.Photo.FlashManufacturer -- PKEY_Photo_FlashManufacturer
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {AABAF6C9-E0C5-4719-8585-57B103E584FE}, 100
    PKEY_Photo_FlashManufacturer: TPROPERTYKEY = (fmtid: '{AABAF6C9-E0C5-4719-8585-57B103E584FE}'; pid: 100);

    //  Name:     System.Photo.FlashModel -- PKEY_Photo_FlashModel
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {FE83BB35-4D1A-42E2-916B-06F3E1AF719E}, 100
    PKEY_Photo_FlashModel: TPROPERTYKEY = (fmtid: '{FE83BB35-4D1A-42E2-916B-06F3E1AF719E}'; pid: 100);

    //  Name:     System.Photo.FlashText -- PKEY_Photo_FlashText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {6B8B68F6-200B-47EA-8D25-D8050F57339F}, 100

    //  This is the user-friendly form of System.Photo.Flash.  Not intended to be parsed
    //  programmatically.
    PKEY_Photo_FlashText: TPROPERTYKEY = (fmtid: '{6B8B68F6-200B-47EA-8D25-D8050F57339F}'; pid: 100);

    //  Name:     System.Photo.FNumber -- PKEY_Photo_FNumber
    //  Type:     Double -- VT_R8
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 33437

    //  PropertyTagExifFNumber.  Calculated from PKEY_Photo_FNumberNumerator and PKEY_Photo_FNumberDenominator
    PKEY_Photo_FNumber: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 33437);

    //  Name:     System.Photo.FNumberDenominator -- PKEY_Photo_FNumberDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {E92A2496-223B-4463-A4E3-30EABBA79D80}, 100

    //  Denominator of PKEY_Photo_FNumber
    PKEY_Photo_FNumberDenominator: TPROPERTYKEY = (fmtid: '{E92A2496-223B-4463-A4E3-30EABBA79D80}'; pid: 100);

    //  Name:     System.Photo.FNumberNumerator -- PKEY_Photo_FNumberNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {1B97738A-FDFC-462F-9D93-1957E08BE90C}, 100

    //  Numerator of PKEY_Photo_FNumber
    PKEY_Photo_FNumberNumerator: TPROPERTYKEY = (fmtid: '{1B97738A-FDFC-462F-9D93-1957E08BE90C}'; pid: 100);

    //  Name:     System.Photo.FocalLength -- PKEY_Photo_FocalLength
    //  Type:     Double -- VT_R8
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 37386

    //  PropertyTagExifFocalLength.  Calculated from PKEY_Photo_FocalLengthNumerator and PKEY_Photo_FocalLengthDenominator
    PKEY_Photo_FocalLength: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 37386);

    //  Name:     System.Photo.FocalLengthDenominator -- PKEY_Photo_FocalLengthDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {305BC615-DCA1-44A5-9FD4-10C0BA79412E}, 100

    //  Denominator of PKEY_Photo_FocalLength
    PKEY_Photo_FocalLengthDenominator: TPROPERTYKEY = (fmtid: '{305BC615-DCA1-44A5-9FD4-10C0BA79412E}'; pid: 100);

    //  Name:     System.Photo.FocalLengthInFilm -- PKEY_Photo_FocalLengthInFilm
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {A0E74609-B84D-4F49-B860-462BD9971F98}, 100
    PKEY_Photo_FocalLengthInFilm: TPROPERTYKEY = (fmtid: '{A0E74609-B84D-4F49-B860-462BD9971F98}'; pid: 100);

    //  Name:     System.Photo.FocalLengthNumerator -- PKEY_Photo_FocalLengthNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {776B6B3B-1E3D-4B0C-9A0E-8FBAF2A8492A}, 100

    //  Numerator of PKEY_Photo_FocalLength
    PKEY_Photo_FocalLengthNumerator: TPROPERTYKEY = (fmtid: '{776B6B3B-1E3D-4B0C-9A0E-8FBAF2A8492A}'; pid: 100);

    //  Name:     System.Photo.FocalPlaneXResolution -- PKEY_Photo_FocalPlaneXResolution
    //  Type:     Double -- VT_R8
    //  FormatID: {CFC08D97-C6F7-4484-89DD-EBEF4356FE76}, 100

    //  PropertyTagExifFocalXRes.  Calculated from PKEY_Photo_FocalPlaneXResolutionNumerator and
    //  PKEY_Photo_FocalPlaneXResolutionDenominator.
    PKEY_Photo_FocalPlaneXResolution: TPROPERTYKEY = (fmtid: '{CFC08D97-C6F7-4484-89DD-EBEF4356FE76}'; pid: 100);

    //  Name:     System.Photo.FocalPlaneXResolutionDenominator -- PKEY_Photo_FocalPlaneXResolutionDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {0933F3F5-4786-4F46-A8E8-D64DD37FA521}, 100

    //  Denominator of PKEY_Photo_FocalPlaneXResolution
    PKEY_Photo_FocalPlaneXResolutionDenominator: TPROPERTYKEY = (fmtid: '{0933F3F5-4786-4F46-A8E8-D64DD37FA521}'; pid: 100);

    //  Name:     System.Photo.FocalPlaneXResolutionNumerator -- PKEY_Photo_FocalPlaneXResolutionNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {DCCB10AF-B4E2-4B88-95F9-031B4D5AB490}, 100

    //  Numerator of PKEY_Photo_FocalPlaneXResolution
    PKEY_Photo_FocalPlaneXResolutionNumerator: TPROPERTYKEY = (fmtid: '{DCCB10AF-B4E2-4B88-95F9-031B4D5AB490}'; pid: 100);

    //  Name:     System.Photo.FocalPlaneYResolution -- PKEY_Photo_FocalPlaneYResolution
    //  Type:     Double -- VT_R8
    //  FormatID: {4FFFE4D0-914F-4AC4-8D6F-C9C61DE169B1}, 100

    //  PropertyTagExifFocalYRes.  Calculated from PKEY_Photo_FocalPlaneYResolutionNumerator and
    //  PKEY_Photo_FocalPlaneYResolutionDenominator.
    PKEY_Photo_FocalPlaneYResolution: TPROPERTYKEY = (fmtid: '{4FFFE4D0-914F-4AC4-8D6F-C9C61DE169B1}'; pid: 100);

    //  Name:     System.Photo.FocalPlaneYResolutionDenominator -- PKEY_Photo_FocalPlaneYResolutionDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {1D6179A6-A876-4031-B013-3347B2B64DC8}, 100

    //  Denominator of PKEY_Photo_FocalPlaneYResolution
    PKEY_Photo_FocalPlaneYResolutionDenominator: TPROPERTYKEY = (fmtid: '{1D6179A6-A876-4031-B013-3347B2B64DC8}'; pid: 100);

    //  Name:     System.Photo.FocalPlaneYResolutionNumerator -- PKEY_Photo_FocalPlaneYResolutionNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {A2E541C5-4440-4BA8-867E-75CFC06828CD}, 100

    //  Numerator of PKEY_Photo_FocalPlaneYResolution
    PKEY_Photo_FocalPlaneYResolutionNumerator: TPROPERTYKEY = (fmtid: '{A2E541C5-4440-4BA8-867E-75CFC06828CD}'; pid: 100);

    //  Name:     System.Photo.GainControl -- PKEY_Photo_GainControl
    //  Type:     Double -- VT_R8
    //  FormatID: {FA304789-00C7-4D80-904A-1E4DCC7265AA}, 100 (PropertyTagExifGainControl)

    //  This indicates the degree of overall image gain adjustment.

    //  Calculated from PKEY_Photo_GainControlNumerator and PKEY_Photo_GainControlDenominator.
    PKEY_Photo_GainControl: TPROPERTYKEY = (fmtid: '{FA304789-00C7-4D80-904A-1E4DCC7265AA}'; pid: 100);

    // Possible discrete values for PKEY_Photo_GainControl are:
    PHOTO_GAINCONTROL_NONE = 0.0;
    PHOTO_GAINCONTROL_LOWGAINUP = 1.0;
    PHOTO_GAINCONTROL_HIGHGAINUP = 2.0;
    PHOTO_GAINCONTROL_LOWGAINDOWN = 3.0;
    PHOTO_GAINCONTROL_HIGHGAINDOWN = 4.0;

    //  Name:     System.Photo.GainControlDenominator -- PKEY_Photo_GainControlDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {42864DFD-9DA4-4F77-BDED-4AAD7B256735}, 100

    //  Denominator of PKEY_Photo_GainControl
    PKEY_Photo_GainControlDenominator: TPROPERTYKEY = (fmtid: '{42864DFD-9DA4-4F77-BDED-4AAD7B256735}'; pid: 100);

    //  Name:     System.Photo.GainControlNumerator -- PKEY_Photo_GainControlNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {8E8ECF7C-B7B8-4EB8-A63F-0EE715C96F9E}, 100

    //  Numerator of PKEY_Photo_GainControl
    PKEY_Photo_GainControlNumerator: TPROPERTYKEY = (fmtid: '{8E8ECF7C-B7B8-4EB8-A63F-0EE715C96F9E}'; pid: 100);

    //  Name:     System.Photo.GainControlText -- PKEY_Photo_GainControlText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C06238B2-0BF9-4279-A723-25856715CB9D}, 100

    //  This is the user-friendly form of System.Photo.GainControl.  Not intended to be parsed
    //  programmatically.
    PKEY_Photo_GainControlText: TPROPERTYKEY = (fmtid: '{C06238B2-0BF9-4279-A723-25856715CB9D}'; pid: 100);

    //  Name:     System.Photo.ISOSpeed -- PKEY_Photo_ISOSpeed
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 34855

    //  PropertyTagExifISOSpeed
    PKEY_Photo_ISOSpeed: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 34855);

    //  Name:     System.Photo.LensManufacturer -- PKEY_Photo_LensManufacturer
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {E6DDCAF7-29C5-4F0A-9A68-D19412EC7090}, 100
    PKEY_Photo_LensManufacturer: TPROPERTYKEY = (fmtid: '{E6DDCAF7-29C5-4F0A-9A68-D19412EC7090}'; pid: 100);

    //  Name:     System.Photo.LensModel -- PKEY_Photo_LensModel
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {E1277516-2B5F-4869-89B1-2E585BD38B7A}, 100
    PKEY_Photo_LensModel: TPROPERTYKEY = (fmtid: '{E1277516-2B5F-4869-89B1-2E585BD38B7A}'; pid: 100);

    //  Name:     System.Photo.LightSource -- PKEY_Photo_LightSource
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 37384

    //  PropertyTagExifLightSource
    PKEY_Photo_LightSource: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 37384);

    // Possible discrete values for PKEY_Photo_LightSource are:
    PHOTO_LIGHTSOURCE_UNKNOWN = 0;
    PHOTO_LIGHTSOURCE_DAYLIGHT = 1;
    PHOTO_LIGHTSOURCE_FLUORESCENT = 2;
    PHOTO_LIGHTSOURCE_TUNGSTEN = 3;
    PHOTO_LIGHTSOURCE_STANDARD_A = 17;
    PHOTO_LIGHTSOURCE_STANDARD_B = 18;
    PHOTO_LIGHTSOURCE_STANDARD_C = 19;
    PHOTO_LIGHTSOURCE_D55 = 20;
    PHOTO_LIGHTSOURCE_D65 = 21;
    PHOTO_LIGHTSOURCE_D75 = 22;

    //  Name:     System.Photo.MakerNote -- PKEY_Photo_MakerNote
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: {FA303353-B659-4052-85E9-BCAC79549B84}, 100
    PKEY_Photo_MakerNote: TPROPERTYKEY = (fmtid: '{FA303353-B659-4052-85E9-BCAC79549B84}'; pid: 100);

    //  Name:     System.Photo.MakerNoteOffset -- PKEY_Photo_MakerNoteOffset
    //  Type:     UInt64 -- VT_UI8
    //  FormatID: {813F4124-34E6-4D17-AB3E-6B1F3C2247A1}, 100
    PKEY_Photo_MakerNoteOffset: TPROPERTYKEY = (fmtid: '{813F4124-34E6-4D17-AB3E-6B1F3C2247A1}'; pid: 100);

    //  Name:     System.Photo.MaxAperture -- PKEY_Photo_MaxAperture
    //  Type:     Double -- VT_R8
    //  FormatID: {08F6D7C2-E3F2-44FC-AF1E-5AA5C81A2D3E}, 100

    //  Calculated from PKEY_Photo_MaxApertureNumerator and PKEY_Photo_MaxApertureDenominator
    PKEY_Photo_MaxAperture: TPROPERTYKEY = (fmtid: '{08F6D7C2-E3F2-44FC-AF1E-5AA5C81A2D3E}'; pid: 100);

    //  Name:     System.Photo.MaxApertureDenominator -- PKEY_Photo_MaxApertureDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {C77724D4-601F-46C5-9B89-C53F93BCEB77}, 100

    //  Denominator of PKEY_Photo_MaxAperture
    PKEY_Photo_MaxApertureDenominator: TPROPERTYKEY = (fmtid: '{C77724D4-601F-46C5-9B89-C53F93BCEB77}'; pid: 100);

    //  Name:     System.Photo.MaxApertureNumerator -- PKEY_Photo_MaxApertureNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {C107E191-A459-44C5-9AE6-B952AD4B906D}, 100

    //  Numerator of PKEY_Photo_MaxAperture
    PKEY_Photo_MaxApertureNumerator: TPROPERTYKEY = (fmtid: '{C107E191-A459-44C5-9AE6-B952AD4B906D}'; pid: 100);

    //  Name:     System.Photo.MeteringMode -- PKEY_Photo_MeteringMode
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 37383

    //  PropertyTagExifMeteringMode
    PKEY_Photo_MeteringMode: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 37383);

    // Possible discrete values for PKEY_Photo_MeteringMode are:
    PHOTO_METERINGMODE_UNKNOWN = 0;
    PHOTO_METERINGMODE_AVERAGE = 1;
    PHOTO_METERINGMODE_CENTER = 2;
    PHOTO_METERINGMODE_SPOT = 3;
    PHOTO_METERINGMODE_MULTISPOT = 4;
    PHOTO_METERINGMODE_PATTERN = 5;
    PHOTO_METERINGMODE_PARTIAL = 6;

    //  Name:     System.Photo.MeteringModeText -- PKEY_Photo_MeteringModeText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {F628FD8C-7BA8-465A-A65B-C5AA79263A9E}, 100

    //  This is the user-friendly form of System.Photo.MeteringMode.  Not intended to be parsed
    //  programmatically.
    PKEY_Photo_MeteringModeText: TPROPERTYKEY = (fmtid: '{F628FD8C-7BA8-465A-A65B-C5AA79263A9E}'; pid: 100);

    //  Name:     System.Photo.Orientation -- PKEY_Photo_Orientation
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 274 (PropertyTagOrientation)

    //  This is the image orientation viewed in terms of rows and columns.
    PKEY_Photo_Orientation: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 274);

    // Possible discrete values for PKEY_Photo_Orientation are:
    PHOTO_ORIENTATION_NORMAL = 1;
    PHOTO_ORIENTATION_FLIPHORIZONTAL = 2;
    PHOTO_ORIENTATION_ROTATE180 = 3;
    PHOTO_ORIENTATION_FLIPVERTICAL = 4;
    PHOTO_ORIENTATION_TRANSPOSE = 5;
    PHOTO_ORIENTATION_ROTATE270 = 6;
    PHOTO_ORIENTATION_TRANSVERSE = 7;
    PHOTO_ORIENTATION_ROTATE90 = 8;

    //  Name:     System.Photo.OrientationText -- PKEY_Photo_OrientationText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A9EA193C-C511-498A-A06B-58E2776DCC28}, 100

    //  This is the user-friendly form of System.Photo.Orientation.  Not intended to be parsed
    //  programmatically.
    PKEY_Photo_OrientationText: TPROPERTYKEY = (fmtid: '{A9EA193C-C511-498A-A06B-58E2776DCC28}'; pid: 100);

    //  Name:     System.Photo.PeopleNames -- PKEY_Photo_PeopleNames
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)  Legacy code may treat this as VT_LPSTR.
    //  FormatID: {E8309B6E-084C-49B4-B1FC-90A80331B638}, 100

    //  The people tags on an image.
    PKEY_Photo_PeopleNames: TPROPERTYKEY = (fmtid: '{E8309B6E-084C-49B4-B1FC-90A80331B638}'; pid: 100);

    //  Name:     System.Photo.PhotometricInterpretation -- PKEY_Photo_PhotometricInterpretation
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: {341796F1-1DF9-4B1C-A564-91BDEFA43877}, 100

    //  This is the pixel composition. In JPEG compressed data, a JPEG marker is used
    //  instead of this property.
    PKEY_Photo_PhotometricInterpretation: TPROPERTYKEY = (fmtid: '{341796F1-1DF9-4B1C-A564-91BDEFA43877}'; pid: 100);

    // Possible discrete values for PKEY_Photo_PhotometricInterpretation are:
    PHOTO_PHOTOMETRIC_RGB = 2;
    PHOTO_PHOTOMETRIC_YCBCR = 6;

    //  Name:     System.Photo.PhotometricInterpretationText -- PKEY_Photo_PhotometricInterpretationText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {821437D6-9EAB-4765-A589-3B1CBBD22A61}, 100

    //  This is the user-friendly form of System.Photo.PhotometricInterpretation.  Not intended to be parsed
    //  programmatically.
    PKEY_Photo_PhotometricInterpretationText: TPROPERTYKEY = (fmtid: '{821437D6-9EAB-4765-A589-3B1CBBD22A61}'; pid: 100);

    //  Name:     System.Photo.ProgramMode -- PKEY_Photo_ProgramMode
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {6D217F6D-3F6A-4825-B470-5F03CA2FBE9B}, 100

    //  This is the class of the program used by the camera to set exposure when the
    //  picture is taken.
    PKEY_Photo_ProgramMode: TPROPERTYKEY = (fmtid: '{6D217F6D-3F6A-4825-B470-5F03CA2FBE9B}'; pid: 100);

    // Possible discrete values for PKEY_Photo_ProgramMode are:
    PHOTO_PROGRAMMODE_NOTDEFINED = 0;
    PHOTO_PROGRAMMODE_MANUAL = 1;
    PHOTO_PROGRAMMODE_NORMAL = 2;
    PHOTO_PROGRAMMODE_APERTURE = 3;
    PHOTO_PROGRAMMODE_SHUTTER = 4;
    PHOTO_PROGRAMMODE_CREATIVE = 5;
    PHOTO_PROGRAMMODE_ACTION = 6;
    PHOTO_PROGRAMMODE_PORTRAIT = 7;
    PHOTO_PROGRAMMODE_LANDSCAPE = 8;

    //  Name:     System.Photo.ProgramModeText -- PKEY_Photo_ProgramModeText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {7FE3AA27-2648-42F3-89B0-454E5CB150C3}, 100

    //  This is the user-friendly form of System.Photo.ProgramMode.  Not intended to be parsed
    //  programmatically.
    PKEY_Photo_ProgramModeText: TPROPERTYKEY = (fmtid: '{7FE3AA27-2648-42F3-89B0-454E5CB150C3}'; pid: 100);

    //  Name:     System.Photo.RelatedSoundFile -- PKEY_Photo_RelatedSoundFile
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {318A6B45-087F-4DC2-B8CC-05359551FC9E}, 100
    PKEY_Photo_RelatedSoundFile: TPROPERTYKEY = (fmtid: '{318A6B45-087F-4DC2-B8CC-05359551FC9E}'; pid: 100);

    //  Name:     System.Photo.Saturation -- PKEY_Photo_Saturation
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {49237325-A95A-4F67-B211-816B2D45D2E0}, 100

    //  This indicates the direction of saturation processing applied by the camera when
    //  the image was shot.
    PKEY_Photo_Saturation: TPROPERTYKEY = (fmtid: '{49237325-A95A-4F67-B211-816B2D45D2E0}'; pid: 100);

    // Possible discrete values for PKEY_Photo_Saturation are:
    PHOTO_SATURATION_NORMAL = 0;
    PHOTO_SATURATION_LOW = 1;
    PHOTO_SATURATION_HIGH = 2;

    //  Name:     System.Photo.SaturationText -- PKEY_Photo_SaturationText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {61478C08-B600-4A84-BBE4-E99C45F0A072}, 100

    //  This is the user-friendly form of System.Photo.Saturation.  Not intended to be parsed
    //  programmatically.
    PKEY_Photo_SaturationText: TPROPERTYKEY = (fmtid: '{61478C08-B600-4A84-BBE4-E99C45F0A072}'; pid: 100);

    //  Name:     System.Photo.Sharpness -- PKEY_Photo_Sharpness
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {FC6976DB-8349-4970-AE97-B3C5316A08F0}, 100

    //  This indicates the direction of sharpness processing applied by the camera when
    //  the image was shot.
    PKEY_Photo_Sharpness: TPROPERTYKEY = (fmtid: '{FC6976DB-8349-4970-AE97-B3C5316A08F0}'; pid: 100);

    // Possible discrete values for PKEY_Photo_Sharpness are:
    PHOTO_SHARPNESS_NORMAL = 0;
    PHOTO_SHARPNESS_SOFT = 1;
    PHOTO_SHARPNESS_HARD = 2;

    //  Name:     System.Photo.SharpnessText -- PKEY_Photo_SharpnessText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {51EC3F47-DD50-421D-8769-334F50424B1E}, 100

    //  This is the user-friendly form of System.Photo.Sharpness.  Not intended to be parsed
    //  programmatically.
    PKEY_Photo_SharpnessText: TPROPERTYKEY = (fmtid: '{51EC3F47-DD50-421D-8769-334F50424B1E}'; pid: 100);

    //  Name:     System.Photo.ShutterSpeed -- PKEY_Photo_ShutterSpeed
    //  Type:     Double -- VT_R8
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 37377

    //  PropertyTagExifShutterSpeed.  Calculated from PKEY_Photo_ShutterSpeedNumerator and PKEY_Photo_ShutterSpeedDenominator
    PKEY_Photo_ShutterSpeed: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 37377);

    //  Name:     System.Photo.ShutterSpeedDenominator -- PKEY_Photo_ShutterSpeedDenominator
    //  Type:     Int32 -- VT_I4
    //  FormatID: {E13D8975-81C7-4948-AE3F-37CAE11E8FF7}, 100

    //  Denominator of PKEY_Photo_ShutterSpeed
    PKEY_Photo_ShutterSpeedDenominator: TPROPERTYKEY = (fmtid: '{E13D8975-81C7-4948-AE3F-37CAE11E8FF7}'; pid: 100);

    //  Name:     System.Photo.ShutterSpeedNumerator -- PKEY_Photo_ShutterSpeedNumerator
    //  Type:     Int32 -- VT_I4
    //  FormatID: {16EA4042-D6F4-4BCA-8349-7C78D30FB333}, 100

    //  Numerator of PKEY_Photo_ShutterSpeed
    PKEY_Photo_ShutterSpeedNumerator: TPROPERTYKEY = (fmtid: '{16EA4042-D6F4-4BCA-8349-7C78D30FB333}'; pid: 100);

    //  Name:     System.Photo.SubjectDistance -- PKEY_Photo_SubjectDistance
    //  Type:     Double -- VT_R8
    //  FormatID: (FMTID_ImageProperties) {14B81DA1-0135-4D31-96D9-6CBFC9671A99}, 37382

    //  PropertyTagExifSubjectDist.  Calculated from PKEY_Photo_SubjectDistanceNumerator and PKEY_Photo_SubjectDistanceDenominator
    PKEY_Photo_SubjectDistance: TPROPERTYKEY = (fmtid: '{14B81DA1-0135-4D31-96D9-6CBFC9671A99}'; pid: 37382);

    //  Name:     System.Photo.SubjectDistanceDenominator -- PKEY_Photo_SubjectDistanceDenominator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {0C840A88-B043-466D-9766-D4B26DA3FA77}, 100

    //  Denominator of PKEY_Photo_SubjectDistance
    PKEY_Photo_SubjectDistanceDenominator: TPROPERTYKEY = (fmtid: '{0C840A88-B043-466D-9766-D4B26DA3FA77}'; pid: 100);

    //  Name:     System.Photo.SubjectDistanceNumerator -- PKEY_Photo_SubjectDistanceNumerator
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {8AF4961C-F526-43E5-AA81-DB768219178D}, 100

    //  Numerator of PKEY_Photo_SubjectDistance
    PKEY_Photo_SubjectDistanceNumerator: TPROPERTYKEY = (fmtid: '{8AF4961C-F526-43E5-AA81-DB768219178D}'; pid: 100);

    //  Name:     System.Photo.TagViewAggregate -- PKEY_Photo_TagViewAggregate
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)  Legacy code may treat this as VT_LPSTR.
    //  FormatID: {B812F15D-C2D8-4BBF-BACD-79744346113F}, 100

    //  A read-only aggregation of tag-like properties for use in building views.
    PKEY_Photo_TagViewAggregate: TPROPERTYKEY = (fmtid: '{B812F15D-C2D8-4BBF-BACD-79744346113F}'; pid: 100);

    //  Name:     System.Photo.TranscodedForSync -- PKEY_Photo_TranscodedForSync
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {9A8EBB75-6458-4E82-BACB-35C0095B03BB}, 100
    PKEY_Photo_TranscodedForSync: TPROPERTYKEY = (fmtid: '{9A8EBB75-6458-4E82-BACB-35C0095B03BB}'; pid: 100);

    //  Name:     System.Photo.WhiteBalance -- PKEY_Photo_WhiteBalance
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {EE3D3D8A-5381-4CFA-B13B-AAF66B5F4EC9}, 100

    //  This indicates the white balance mode set when the image was shot.
    PKEY_Photo_WhiteBalance: TPROPERTYKEY = (fmtid: '{EE3D3D8A-5381-4CFA-B13B-AAF66B5F4EC9}'; pid: 100);

    // Possible discrete values for PKEY_Photo_WhiteBalance are:
    PHOTO_WHITEBALANCE_AUTO = 0;
    PHOTO_WHITEBALANCE_MANUAL = 1;

    //  Name:     System.Photo.WhiteBalanceText -- PKEY_Photo_WhiteBalanceText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {6336B95E-C7A7-426D-86FD-7AE3D39C84B4}, 100

    //  This is the user-friendly form of System.Photo.WhiteBalance.  Not intended to be parsed
    //  programmatically.
    PKEY_Photo_WhiteBalanceText: TPROPERTYKEY = (fmtid: '{6336B95E-C7A7-426D-86FD-7AE3D39C84B4}'; pid: 100);

    //-----------------------------------------------------------------------------
    // PropGroup properties

    //  Name:     System.PropGroup.Advanced -- PKEY_PropGroup_Advanced
    //  Type:     Null -- VT_NULL
    //  FormatID: {900A403B-097B-4B95-8AE2-071FDAEEB118}, 100
    PKEY_PropGroup_Advanced: TPROPERTYKEY = (fmtid: '{900A403B-097B-4B95-8AE2-071FDAEEB118}'; pid: 100);

    //  Name:     System.PropGroup.Audio -- PKEY_PropGroup_Audio
    //  Type:     Null -- VT_NULL
    //  FormatID: {2804D469-788F-48AA-8570-71B9C187E138}, 100
    PKEY_PropGroup_Audio: TPROPERTYKEY = (fmtid: '{2804D469-788F-48AA-8570-71B9C187E138}'; pid: 100);

    //  Name:     System.PropGroup.Calendar -- PKEY_PropGroup_Calendar
    //  Type:     Null -- VT_NULL
    //  FormatID: {9973D2B5-BFD8-438A-BA94-5349B293181A}, 100
    PKEY_PropGroup_Calendar: TPROPERTYKEY = (fmtid: '{9973D2B5-BFD8-438A-BA94-5349B293181A}'; pid: 100);

    //  Name:     System.PropGroup.Camera -- PKEY_PropGroup_Camera
    //  Type:     Null -- VT_NULL
    //  FormatID: {DE00DE32-547E-4981-AD4B-542F2E9007D8}, 100
    PKEY_PropGroup_Camera: TPROPERTYKEY = (fmtid: '{DE00DE32-547E-4981-AD4B-542F2E9007D8}'; pid: 100);

    //  Name:     System.PropGroup.Contact -- PKEY_PropGroup_Contact
    //  Type:     Null -- VT_NULL
    //  FormatID: {DF975FD3-250A-4004-858F-34E29A3E37AA}, 100
    PKEY_PropGroup_Contact: TPROPERTYKEY = (fmtid: '{DF975FD3-250A-4004-858F-34E29A3E37AA}'; pid: 100);

    //  Name:     System.PropGroup.Content -- PKEY_PropGroup_Content
    //  Type:     Null -- VT_NULL
    //  FormatID: {D0DAB0BA-368A-4050-A882-6C010FD19A4F}, 100
    PKEY_PropGroup_Content: TPROPERTYKEY = (fmtid: '{D0DAB0BA-368A-4050-A882-6C010FD19A4F}'; pid: 100);

    //  Name:     System.PropGroup.Description -- PKEY_PropGroup_Description
    //  Type:     Null -- VT_NULL
    //  FormatID: {8969B275-9475-4E00-A887-FF93B8B41E44}, 100
    PKEY_PropGroup_Description: TPROPERTYKEY = (fmtid: '{8969B275-9475-4E00-A887-FF93B8B41E44}'; pid: 100);

    //  Name:     System.PropGroup.FileSystem -- PKEY_PropGroup_FileSystem
    //  Type:     Null -- VT_NULL
    //  FormatID: {E3A7D2C1-80FC-4B40-8F34-30EA111BDC2E}, 100
    PKEY_PropGroup_FileSystem: TPROPERTYKEY = (fmtid: '{E3A7D2C1-80FC-4B40-8F34-30EA111BDC2E}'; pid: 100);

    //  Name:     System.PropGroup.General -- PKEY_PropGroup_General
    //  Type:     Null -- VT_NULL
    //  FormatID: {CC301630-B192-4C22-B372-9F4C6D338E07}, 100
    PKEY_PropGroup_General: TPROPERTYKEY = (fmtid: '{CC301630-B192-4C22-B372-9F4C6D338E07}'; pid: 100);

    //  Name:     System.PropGroup.GPS -- PKEY_PropGroup_GPS
    //  Type:     Null -- VT_NULL
    //  FormatID: {F3713ADA-90E3-4E11-AAE5-FDC17685B9BE}, 100
    PKEY_PropGroup_GPS: TPROPERTYKEY = (fmtid: '{F3713ADA-90E3-4E11-AAE5-FDC17685B9BE}'; pid: 100);

    //  Name:     System.PropGroup.Image -- PKEY_PropGroup_Image
    //  Type:     Null -- VT_NULL
    //  FormatID: {E3690A87-0FA8-4A2A-9A9F-FCE8827055AC}, 100
    PKEY_PropGroup_Image: TPROPERTYKEY = (fmtid: '{E3690A87-0FA8-4A2A-9A9F-FCE8827055AC}'; pid: 100);

    //  Name:     System.PropGroup.Media -- PKEY_PropGroup_Media
    //  Type:     Null -- VT_NULL
    //  FormatID: {61872CF7-6B5E-4B4B-AC2D-59DA84459248}, 100
    PKEY_PropGroup_Media: TPROPERTYKEY = (fmtid: '{61872CF7-6B5E-4B4B-AC2D-59DA84459248}'; pid: 100);

    //  Name:     System.PropGroup.MediaAdvanced -- PKEY_PropGroup_MediaAdvanced
    //  Type:     Null -- VT_NULL
    //  FormatID: {8859A284-DE7E-4642-99BA-D431D044B1EC}, 100
    PKEY_PropGroup_MediaAdvanced: TPROPERTYKEY = (fmtid: '{8859A284-DE7E-4642-99BA-D431D044B1EC}'; pid: 100);

    //  Name:     System.PropGroup.Message -- PKEY_PropGroup_Message
    //  Type:     Null -- VT_NULL
    //  FormatID: {7FD7259D-16B4-4135-9F97-7C96ECD2FA9E}, 100
    PKEY_PropGroup_Message: TPROPERTYKEY = (fmtid: '{7FD7259D-16B4-4135-9F97-7C96ECD2FA9E}'; pid: 100);

    //  Name:     System.PropGroup.Music -- PKEY_PropGroup_Music
    //  Type:     Null -- VT_NULL
    //  FormatID: {68DD6094-7216-40F1-A029-43FE7127043F}, 100
    PKEY_PropGroup_Music: TPROPERTYKEY = (fmtid: '{68DD6094-7216-40F1-A029-43FE7127043F}'; pid: 100);

    //  Name:     System.PropGroup.Origin -- PKEY_PropGroup_Origin
    //  Type:     Null -- VT_NULL
    //  FormatID: {2598D2FB-5569-4367-95DF-5CD3A177E1A5}, 100
    PKEY_PropGroup_Origin: TPROPERTYKEY = (fmtid: '{2598D2FB-5569-4367-95DF-5CD3A177E1A5}'; pid: 100);

    //  Name:     System.PropGroup.PhotoAdvanced -- PKEY_PropGroup_PhotoAdvanced
    //  Type:     Null -- VT_NULL
    //  FormatID: {0CB2BF5A-9EE7-4A86-8222-F01E07FDADAF}, 100
    PKEY_PropGroup_PhotoAdvanced: TPROPERTYKEY = (fmtid: '{0CB2BF5A-9EE7-4A86-8222-F01E07FDADAF}'; pid: 100);

    //  Name:     System.PropGroup.RecordedTV -- PKEY_PropGroup_RecordedTV
    //  Type:     Null -- VT_NULL
    //  FormatID: {E7B33238-6584-4170-A5C0-AC25EFD9DA56}, 100
    PKEY_PropGroup_RecordedTV: TPROPERTYKEY = (fmtid: '{E7B33238-6584-4170-A5C0-AC25EFD9DA56}'; pid: 100);

    //  Name:     System.PropGroup.Video -- PKEY_PropGroup_Video
    //  Type:     Null -- VT_NULL
    //  FormatID: {BEBE0920-7671-4C54-A3EB-49FDDFC191EE}, 100
    PKEY_PropGroup_Video: TPROPERTYKEY = (fmtid: '{BEBE0920-7671-4C54-A3EB-49FDDFC191EE}'; pid: 100);

    //-----------------------------------------------------------------------------
    // PropList properties

    //  Name:     System.InfoTipText -- PKEY_InfoTipText
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 17

    //  The text (with formatted property values) to show in the infotip.
    PKEY_InfoTipText: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 17);

    //  Name:     System.PropList.ConflictPrompt -- PKEY_PropList_ConflictPrompt
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 11

    //  The list of properties to show in the file operation conflict resolution dialog. Properties with empty
    //  values will not be displayed. Register under the regvalue of "ConflictPrompt".
    PKEY_PropList_ConflictPrompt: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 11);

    //  Name:     System.PropList.ContentViewModeForBrowse -- PKEY_PropList_ContentViewModeForBrowse
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 13

    //  The list of properties to show in the content view mode of an item in the context of browsing.
    //  Register the regvalue under the name of "ContentViewModeForBrowse".
    PKEY_PropList_ContentViewModeForBrowse: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 13);

    //  Name:     System.PropList.ContentViewModeForSearch -- PKEY_PropList_ContentViewModeForSearch
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 14

    //  The list of properties to show in the content view mode of an item in the context of searching.
    //  Register the regvalue under the name of "ContentViewModeForSearch".
    PKEY_PropList_ContentViewModeForSearch: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 14);

    //  Name:     System.PropList.ExtendedTileInfo -- PKEY_PropList_ExtendedTileInfo
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 9

    //  The list of properties to show in the listview on extended tiles. Register under the regvalue of
    //  "ExtendedTileInfo".
    PKEY_PropList_ExtendedTileInfo: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 9);

    //  Name:     System.PropList.FileOperationPrompt -- PKEY_PropList_FileOperationPrompt
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 10

    //  The list of properties to show in the file operation confirmation dialog. Properties with empty values
    //  will not be displayed. If this list is not specified, then the InfoTip property list is used instead.
    //  Register under the regvalue of "FileOperationPrompt".
    PKEY_PropList_FileOperationPrompt: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 10);

    //  Name:     System.PropList.FullDetails -- PKEY_PropList_FullDetails
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 2

    //  The list of all the properties to show in the details page.  Property groups can be included in this list
    //  in order to more easily organize the UI.  Register under the regvalue of "FullDetails".
    PKEY_PropList_FullDetails: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 2);

    //  Name:     System.PropList.InfoTip -- PKEY_PropList_InfoTip
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 4 (PID_PROPLIST_INFOTIP)

    //  The list of properties to show in the infotip. Properties with empty values will not be displayed. Register
    //  under the regvalue of "InfoTip".
    PKEY_PropList_InfoTip: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 4);

    //  Name:     System.PropList.NonPersonal -- PKEY_PropList_NonPersonal
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {49D1091F-082E-493F-B23F-D2308AA9668C}, 100

    //  The list of properties that are considered 'non-personal'. When told to remove all non-personal properties
    //  from a given file, the system will leave these particular properties untouched. Register under the regvalue
    //  of "NonPersonal".
    PKEY_PropList_NonPersonal: TPROPERTYKEY = (fmtid: '{49D1091F-082E-493F-B23F-D2308AA9668C}'; pid: 100);

    //  Name:     System.PropList.PreviewDetails -- PKEY_PropList_PreviewDetails
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 8

    //  The list of properties to display in the preview pane.  Register under the regvalue of "PreviewDetails".
    PKEY_PropList_PreviewDetails: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 8);

    //  Name:     System.PropList.PreviewTitle -- PKEY_PropList_PreviewTitle
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 6

    //  The one or two properties to display in the preview pane title section.  The optional second property is
    //  displayed as a subtitle.  Register under the regvalue of "PreviewTitle".
    PKEY_PropList_PreviewTitle: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 6);

    //  Name:     System.PropList.QuickTip -- PKEY_PropList_QuickTip
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 5 (PID_PROPLIST_QUICKTIP)

    //  The list of properties to show in the infotip when the item is on a slow network. Properties with empty
    //  values will not be displayed. Register under the regvalue of "QuickTip".
    PKEY_PropList_QuickTip: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 5);

    //  Name:     System.PropList.TileInfo -- PKEY_PropList_TileInfo
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {C9944A21-A406-48FE-8225-AEC7E24C211B}, 3 (PID_PROPLIST_TILEINFO)

    //  The list of properties to show in the listview on tiles. Register under the regvalue of "TileInfo".
    PKEY_PropList_TileInfo: TPROPERTYKEY = (fmtid: '{C9944A21-A406-48FE-8225-AEC7E24C211B}'; pid: 3);

    //  Name:     System.PropList.XPDetailsPanel -- PKEY_PropList_XPDetailsPanel
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_WebView) {F2275480-F782-4291-BD94-F13693513AEC}, 0 (PID_DISPLAY_PROPERTIES)

    //  The list of properties to display in the XP webview details panel. Obsolete.
    PKEY_PropList_XPDetailsPanel: TPROPERTYKEY = (fmtid: '{F2275480-F782-4291-BD94-F13693513AEC}'; pid: 0);

    //-----------------------------------------------------------------------------
    // RecordedTV properties

    //  Name:     System.RecordedTV.ChannelNumber -- PKEY_RecordedTV_ChannelNumber
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {6D748DE2-8D38-4CC3-AC60-F009B057C557}, 7

    //  Example: 42
    PKEY_RecordedTV_ChannelNumber: TPROPERTYKEY = (fmtid: '{6D748DE2-8D38-4CC3-AC60-F009B057C557}'; pid: 7);

    //  Name:     System.RecordedTV.Credits -- PKEY_RecordedTV_Credits
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {6D748DE2-8D38-4CC3-AC60-F009B057C557}, 4

    //  Example: "Don Messick/Frank Welker/Casey Kasem/Heather North/Nicole Jaffe;;;"
    PKEY_RecordedTV_Credits: TPROPERTYKEY = (fmtid: '{6D748DE2-8D38-4CC3-AC60-F009B057C557}'; pid: 4);

    //  Name:     System.RecordedTV.DateContentExpires -- PKEY_RecordedTV_DateContentExpires
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {6D748DE2-8D38-4CC3-AC60-F009B057C557}, 15
    PKEY_RecordedTV_DateContentExpires: TPROPERTYKEY = (fmtid: '{6D748DE2-8D38-4CC3-AC60-F009B057C557}'; pid: 15);

    //  Name:     System.RecordedTV.EpisodeName -- PKEY_RecordedTV_EpisodeName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {6D748DE2-8D38-4CC3-AC60-F009B057C557}, 2

    //  Example: "Nowhere to Hyde"
    PKEY_RecordedTV_EpisodeName: TPROPERTYKEY = (fmtid: '{6D748DE2-8D38-4CC3-AC60-F009B057C557}'; pid: 2);

    //  Name:     System.RecordedTV.IsATSCContent -- PKEY_RecordedTV_IsATSCContent
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6D748DE2-8D38-4CC3-AC60-F009B057C557}, 16
    PKEY_RecordedTV_IsATSCContent: TPROPERTYKEY = (fmtid: '{6D748DE2-8D38-4CC3-AC60-F009B057C557}'; pid: 16);

    //  Name:     System.RecordedTV.IsClosedCaptioningAvailable -- PKEY_RecordedTV_IsClosedCaptioningAvailable
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6D748DE2-8D38-4CC3-AC60-F009B057C557}, 12
    PKEY_RecordedTV_IsClosedCaptioningAvailable: TPROPERTYKEY = (fmtid: '{6D748DE2-8D38-4CC3-AC60-F009B057C557}'; pid: 12);

    //  Name:     System.RecordedTV.IsDTVContent -- PKEY_RecordedTV_IsDTVContent
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6D748DE2-8D38-4CC3-AC60-F009B057C557}, 17
    PKEY_RecordedTV_IsDTVContent: TPROPERTYKEY = (fmtid: '{6D748DE2-8D38-4CC3-AC60-F009B057C557}'; pid: 17);

    //  Name:     System.RecordedTV.IsHDContent -- PKEY_RecordedTV_IsHDContent
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6D748DE2-8D38-4CC3-AC60-F009B057C557}, 18
    PKEY_RecordedTV_IsHDContent: TPROPERTYKEY = (fmtid: '{6D748DE2-8D38-4CC3-AC60-F009B057C557}'; pid: 18);

    //  Name:     System.RecordedTV.IsRepeatBroadcast -- PKEY_RecordedTV_IsRepeatBroadcast
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6D748DE2-8D38-4CC3-AC60-F009B057C557}, 13
    PKEY_RecordedTV_IsRepeatBroadcast: TPROPERTYKEY = (fmtid: '{6D748DE2-8D38-4CC3-AC60-F009B057C557}'; pid: 13);

    //  Name:     System.RecordedTV.IsSAP -- PKEY_RecordedTV_IsSAP
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {6D748DE2-8D38-4CC3-AC60-F009B057C557}, 14
    PKEY_RecordedTV_IsSAP: TPROPERTYKEY = (fmtid: '{6D748DE2-8D38-4CC3-AC60-F009B057C557}'; pid: 14);

    //  Name:     System.RecordedTV.NetworkAffiliation -- PKEY_RecordedTV_NetworkAffiliation
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {2C53C813-FB63-4E22-A1AB-0B331CA1E273}, 100
    PKEY_RecordedTV_NetworkAffiliation: TPROPERTYKEY = (fmtid: '{2C53C813-FB63-4E22-A1AB-0B331CA1E273}'; pid: 100);

    //  Name:     System.RecordedTV.OriginalBroadcastDate -- PKEY_RecordedTV_OriginalBroadcastDate
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {4684FE97-8765-4842-9C13-F006447B178C}, 100
    PKEY_RecordedTV_OriginalBroadcastDate: TPROPERTYKEY = (fmtid: '{4684FE97-8765-4842-9C13-F006447B178C}'; pid: 100);

    //  Name:     System.RecordedTV.ProgramDescription -- PKEY_RecordedTV_ProgramDescription
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {6D748DE2-8D38-4CC3-AC60-F009B057C557}, 3
    PKEY_RecordedTV_ProgramDescription: TPROPERTYKEY = (fmtid: '{6D748DE2-8D38-4CC3-AC60-F009B057C557}'; pid: 3);

    //  Name:     System.RecordedTV.RecordingTime -- PKEY_RecordedTV_RecordingTime
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {A5477F61-7A82-4ECA-9DDE-98B69B2479B3}, 100
    PKEY_RecordedTV_RecordingTime: TPROPERTYKEY = (fmtid: '{A5477F61-7A82-4ECA-9DDE-98B69B2479B3}'; pid: 100);

    //  Name:     System.RecordedTV.StationCallSign -- PKEY_RecordedTV_StationCallSign
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {6D748DE2-8D38-4CC3-AC60-F009B057C557}, 5

    //  Example: "TOONP"
    PKEY_RecordedTV_StationCallSign: TPROPERTYKEY = (fmtid: '{6D748DE2-8D38-4CC3-AC60-F009B057C557}'; pid: 5);

    //  Name:     System.RecordedTV.StationName -- PKEY_RecordedTV_StationName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {1B5439E7-EBA1-4AF8-BDD7-7AF1D4549493}, 100
    PKEY_RecordedTV_StationName: TPROPERTYKEY = (fmtid: '{1B5439E7-EBA1-4AF8-BDD7-7AF1D4549493}'; pid: 100);

    //-----------------------------------------------------------------------------
    // Search properties

    //  Name:     System.Search.AutoSummary -- PKEY_Search_AutoSummary
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {560C36C0-503A-11CF-BAA1-00004C752A9A}, 2

    //  General Summary of the document.
    PKEY_Search_AutoSummary: TPROPERTYKEY = (fmtid: '{560C36C0-503A-11CF-BAA1-00004C752A9A}'; pid: 2);

    //  Name:     System.Search.ContainerHash -- PKEY_Search_ContainerHash
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {BCEEE283-35DF-4D53-826A-F36A3EEFC6BE}, 100

    //  Hash code used to identify attachments to be deleted based on a common container url
    PKEY_Search_ContainerHash: TPROPERTYKEY = (fmtid: '{BCEEE283-35DF-4D53-826A-F36A3EEFC6BE}'; pid: 100);

    //  Name:     System.Search.Contents -- PKEY_Search_Contents
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_Storage) {B725F130-47EF-101A-A5F1-02608C9EEBAC}, 19 (PID_STG_CONTENTS)

    //  The contents of the item. This property is for query restrictions only; it cannot be retrieved in a
    //  query result. The Indexing Service friendly name is 'contents'.
    PKEY_Search_Contents: TPROPERTYKEY = (fmtid: '{B725F130-47EF-101A-A5F1-02608C9EEBAC}'; pid: 19);

    //  Name:     System.Search.EntryID -- PKEY_Search_EntryID
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_Query) {49691C90-7E17-101A-A91C-08002B2ECDA9}, 5 (PROPID_QUERY_WORKID)

    //  The entry ID for an item within a given catalog in the Windows Search Index.
    //  This value may be recycled, and therefore is not considered unique over time.
    PKEY_Search_EntryID: TPROPERTYKEY = (fmtid: '{49691C90-7E17-101A-A91C-08002B2ECDA9}'; pid: 5);

    //  Name:     System.Search.ExtendedProperties -- PKEY_Search_ExtendedProperties
    //  Type:     Blob -- VT_BLOB
    //  FormatID: {7B03B546-FA4F-4A52-A2FE-03D5311E5865}, 100
    PKEY_Search_ExtendedProperties: TPROPERTYKEY = (fmtid: '{7B03B546-FA4F-4A52-A2FE-03D5311E5865}'; pid: 100);

    //  Name:     System.Search.GatherTime -- PKEY_Search_GatherTime
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {0B63E350-9CCC-11D0-BCDB-00805FCCCE04}, 8

    //  The Datetime that the Windows Search Gatherer process last pushed properties of this document to the Windows Search Gatherer Plugins.
    PKEY_Search_GatherTime: TPROPERTYKEY = (fmtid: '{0B63E350-9CCC-11D0-BCDB-00805FCCCE04}'; pid: 8);

    //  Name:     System.Search.HitCount -- PKEY_Search_HitCount
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_Query) {49691C90-7E17-101A-A91C-08002B2ECDA9}, 4 (PROPID_QUERY_HITCOUNT)

    //  When using CONTAINS over the Windows Search Index, this is the number of matches of the term.
    //  If there are multiple CONTAINS, an AND computes the min number of hits and an OR the max number of hits.
    PKEY_Search_HitCount: TPROPERTYKEY = (fmtid: '{49691C90-7E17-101A-A91C-08002B2ECDA9}'; pid: 4);

    //  Name:     System.Search.IsClosedDirectory -- PKEY_Search_IsClosedDirectory
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {0B63E343-9CCC-11D0-BCDB-00805FCCCE04}, 23

    //  If this property is emitted with a value of TRUE, then it indicates that this URL's last modified time applies to all of it's children, and if this URL is deleted then all of it's children are deleted as well.  For example, this would be emitted as TRUE when emitting the URL of an email so that all attachments are tied to the last modified time of that email.
    PKEY_Search_IsClosedDirectory: TPROPERTYKEY = (fmtid: '{0B63E343-9CCC-11D0-BCDB-00805FCCCE04}'; pid: 23);

    //  Name:     System.Search.IsFullyContained -- PKEY_Search_IsFullyContained
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {0B63E343-9CCC-11D0-BCDB-00805FCCCE04}, 24

    //  Any child URL of a URL which has System.Search.IsClosedDirectory=TRUE must emit System.Search.IsFullyContained=TRUE.  This ensures that the URL is not deleted at the end of a crawl because it hasn't been visited (which is the normal mechanism for detecting deletes).  For example an email attachment would emit this property
    PKEY_Search_IsFullyContained: TPROPERTYKEY = (fmtid: '{0B63E343-9CCC-11D0-BCDB-00805FCCCE04}'; pid: 24);

    //  Name:     System.Search.QueryFocusedSummary -- PKEY_Search_QueryFocusedSummary
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {560C36C0-503A-11CF-BAA1-00004C752A9A}, 3

    //  Query Focused Summary of the document.
    PKEY_Search_QueryFocusedSummary: TPROPERTYKEY = (fmtid: '{560C36C0-503A-11CF-BAA1-00004C752A9A}'; pid: 3);

    //  Name:     System.Search.QueryFocusedSummaryWithFallback -- PKEY_Search_QueryFocusedSummaryWithFallback
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {560C36C0-503A-11CF-BAA1-00004C752A9A}, 4

    //  Query Focused Summary of the document, if none is available it returns the AutoSummary.
    PKEY_Search_QueryFocusedSummaryWithFallback: TPROPERTYKEY = (fmtid: '{560C36C0-503A-11CF-BAA1-00004C752A9A}'; pid: 4);

    //  Name:     System.Search.QueryPropertyHits -- PKEY_Search_QueryPropertyHits
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: (FMTID_Query) {49691C90-7E17-101A-A91C-08002B2ECDA9}, 21

    //  Contains the list of matched properties from a query.
    PKEY_Search_QueryPropertyHits: TPROPERTYKEY = (fmtid: '{49691C90-7E17-101A-A91C-08002B2ECDA9}'; pid: 21);

    //  Name:     System.Search.Rank -- PKEY_Search_Rank
    //  Type:     Int32 -- VT_I4
    //  FormatID: (FMTID_Query) {49691C90-7E17-101A-A91C-08002B2ECDA9}, 3 (PROPID_QUERY_RANK)

    //  Relevance rank of row. Ranges from 0-1000. Larger numbers = better matches.  Query-time only.
    PKEY_Search_Rank: TPROPERTYKEY = (fmtid: '{49691C90-7E17-101A-A91C-08002B2ECDA9}'; pid: 3);

    //  Name:     System.Search.Store -- PKEY_Search_Store
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {A06992B3-8CAF-4ED7-A547-B259E32AC9FC}, 100

    //  The identifier for the protocol handler that produced this item. (E.g. MAPI, CSC, FILE etc.)
    PKEY_Search_Store: TPROPERTYKEY = (fmtid: '{A06992B3-8CAF-4ED7-A547-B259E32AC9FC}'; pid: 100);

    //  Name:     System.Search.UrlToIndex -- PKEY_Search_UrlToIndex
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {0B63E343-9CCC-11D0-BCDB-00805FCCCE04}, 2

    //  This property should be emitted by a container IFilter for each child URL within the container.  The children will eventually be crawled by the indexer if they are within scope.
    PKEY_Search_UrlToIndex: TPROPERTYKEY = (fmtid: '{0B63E343-9CCC-11D0-BCDB-00805FCCCE04}'; pid: 2);

    //  Name:     System.Search.UrlToIndexWithModificationTime -- PKEY_Search_UrlToIndexWithModificationTime
    //  Type:     Multivalue Any -- VT_VECTOR | VT_NULL  (For variants: VT_ARRAY | VT_NULL)
    //  FormatID: {0B63E343-9CCC-11D0-BCDB-00805FCCCE04}, 12

    //  This property is the same as System.Search.UrlToIndex except that it includes the time the URL was last modified.  This is an optimization for the indexer as it doesn't have to call back into the protocol handler to ask for this information to determine if the content needs to be indexed again.  The property is a vector with two elements, a VT_LPWSTR with the URL and a VT_FILETIME for the last modified time.
    PKEY_Search_UrlToIndexWithModificationTime: TPROPERTYKEY = (fmtid: '{0B63E343-9CCC-11D0-BCDB-00805FCCCE04}'; pid: 12);

    //  Name:     System.Supplemental.Album -- PKEY_Supplemental_Album
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {0C73B141-39D6-4653-A683-CAB291EAF95B}, 6

    //  Contains list of the album where the item belongs or is associated with.
    PKEY_Supplemental_Album: TPROPERTYKEY = (fmtid: '{0C73B141-39D6-4653-A683-CAB291EAF95B}'; pid: 6);

    //  Name:     System.Supplemental.AlbumID -- PKEY_Supplemental_AlbumID
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {0C73B141-39D6-4653-A683-CAB291EAF95B}, 2

    //  Contains the identifiers of the albums that the item is a member of. Can be used in conjunction with the Album item in the Content Indexer APIs
    //  to notify other apps about picture albums either the user created or apps have already created.
    PKEY_Supplemental_AlbumID: TPROPERTYKEY = (fmtid: '{0C73B141-39D6-4653-A683-CAB291EAF95B}'; pid: 2);

    //  Name:     System.Supplemental.Location -- PKEY_Supplemental_Location
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {0C73B141-39D6-4653-A683-CAB291EAF95B}, 5

    //  Contains list of location information identified by client such as Photo app.
    PKEY_Supplemental_Location: TPROPERTYKEY = (fmtid: '{0C73B141-39D6-4653-A683-CAB291EAF95B}'; pid: 5);

    //  Name:     System.Supplemental.Person -- PKEY_Supplemental_Person
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {0C73B141-39D6-4653-A683-CAB291EAF95B}, 7

    //  Contains list of person identified by client such as Photo app.
    PKEY_Supplemental_Person: TPROPERTYKEY = (fmtid: '{0C73B141-39D6-4653-A683-CAB291EAF95B}'; pid: 7);

    //  Name:     System.Supplemental.ResourceId -- PKEY_Supplemental_ResourceId
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {0C73B141-39D6-4653-A683-CAB291EAF95B}, 3

    //  Contains the identifier for the item on the remote sync service. Used for comparing a file on the system to ones that are available in the cloud.
    PKEY_Supplemental_ResourceId: TPROPERTYKEY = (fmtid: '{0C73B141-39D6-4653-A683-CAB291EAF95B}'; pid: 3);

    //  Name:     System.Supplemental.Tag -- PKEY_Supplemental_Tag
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {0C73B141-39D6-4653-A683-CAB291EAF95B}, 4

    //  Contains list of tag associated with the item.
    PKEY_Supplemental_Tag: TPROPERTYKEY = (fmtid: '{0C73B141-39D6-4653-A683-CAB291EAF95B}'; pid: 4);

    //-----------------------------------------------------------------------------
    // Shell properties

    //  Name:     System.DescriptionID -- PKEY_DescriptionID
    //  Type:     Buffer -- VT_VECTOR | VT_UI1  (For variants: VT_ARRAY | VT_UI1)
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 2 (PID_DESCRIPTIONID)

    //  The contents of a SHDESCRIPTIONID structure as a buffer of bytes.
    PKEY_DescriptionID: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 2);

    //  Name:     System.InternalName -- PKEY_InternalName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSFMTID_VERSION) {0CEF7D53-FA64-11D1-A203-0000F81FEDEE}, 5 (PIDVSI_InternalName)


    PKEY_InternalName: TPROPERTYKEY = (fmtid: '{0CEF7D53-FA64-11D1-A203-0000F81FEDEE}'; pid: 5);

    //  Name:     System.LibraryLocationsCount -- PKEY_LibraryLocationsCount
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {908696C7-8F87-44F2-80ED-A8C1C6894575}, 2

    //  Library locations count
    PKEY_LibraryLocationsCount: TPROPERTYKEY = (fmtid: '{908696C7-8F87-44F2-80ED-A8C1C6894575}'; pid: 2);

    //  Name:     System.Link.TargetSFGAOFlagsStrings -- PKEY_Link_TargetSFGAOFlagsStrings
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {D6942081-D53B-443D-AD47-5E059D9CD27A}, 3

    //  Expresses the SFGAO flags of a link as string values and is used as a query optimization.  See
    //  PKEY_Shell_SFGAOFlagsStrings for possible values of this.
    PKEY_Link_TargetSFGAOFlagsStrings: TPROPERTYKEY = (fmtid: '{D6942081-D53B-443D-AD47-5E059D9CD27A}'; pid: 3);

    //  Name:     System.Link.TargetUrl -- PKEY_Link_TargetUrl
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {5CBF2787-48CF-4208-B90E-EE5E5D420294}, 2  (PKEYs relating to URLs.  Used by IE History.)
    PKEY_Link_TargetUrl: TPROPERTYKEY = (fmtid: '{5CBF2787-48CF-4208-B90E-EE5E5D420294}'; pid: 2);

    //  Name:     System.NamespaceCLSID -- PKEY_NamespaceCLSID
    //  Type:     Guid -- VT_CLSID
    //  FormatID: (FMTID_ShellDetails) {28636AA6-953D-11D2-B5D6-00C04FD918D0}, 6

    //  The CLSID of the name space extension for an item, the object that implements IShellFolder for this item
    PKEY_NamespaceCLSID: TPROPERTYKEY = (fmtid: '{28636AA6-953D-11D2-B5D6-00C04FD918D0}'; pid: 6);

    //  Name:     System.Shell.SFGAOFlagsStrings -- PKEY_Shell_SFGAOFlagsStrings
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: {D6942081-D53B-443D-AD47-5E059D9CD27A}, 2

    //  Expresses the SFGAO flags as string values and is used as a query optimization.
    PKEY_Shell_SFGAOFlagsStrings: TPROPERTYKEY = (fmtid: '{D6942081-D53B-443D-AD47-5E059D9CD27A}'; pid: 2);

    // Possible discrete values for PKEY_Shell_SFGAOFlagsStrings are:
    SFGAOSTR_FILESYS = WideString('filesys'); // / SFGAO_FILESYSTEM
    SFGAOSTR_FILEANC = WideString('fileanc'); // / SFGAO_FILESYSANCESTOR
    SFGAOSTR_STORAGEANC = WideString('storageanc'); // / SFGAO_STORAGEANCESTOR
    SFGAOSTR_STREAM = WideString('stream'); // / SFGAO_STREAM
    SFGAOSTR_LINK = WideString('link'); // / SFGAO_LINK
    SFGAOSTR_HIDDEN = WideString('hidden'); // / SFGAO_HIDDEN
    SFGAOSTR_SUPERHIDDEN = WideString('superhidden'); // / SFGAO_SUPERHIDDEN
    SFGAOSTR_FOLDER = WideString('folder'); // / SFGAO_FOLDER
    SFGAOSTR_NONENUM = WideString('nonenum'); // / SFGAO_NONENUMERATED
    SFGAOSTR_BROWSABLE = WideString('browsable'); // / SFGAO_BROWSABLE
    SFGAOSTR_SYSTEM = WideString('system'); // / SFGAO_SYSTEM
    SFGAOSTR_PLACEHOLDER = WideString('placeholder'); // / SFGAO_PLACEHOLDER

    //  Name:     System.StatusBarSelectedItemCount -- PKEY_StatusBarSelectedItemCount
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {26DC287C-6E3D-4BD3-B2B0-6A26BA2E346D}, 3

    //  Count of selected items in the view and estimated total size
    PKEY_StatusBarSelectedItemCount: TPROPERTYKEY = (fmtid: '{26DC287C-6E3D-4BD3-B2B0-6A26BA2E346D}'; pid: 3);

    //  Name:     System.StatusBarViewItemCount -- PKEY_StatusBarViewItemCount
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {26DC287C-6E3D-4BD3-B2B0-6A26BA2E346D}, 2

    //  Count of items in the view
    PKEY_StatusBarViewItemCount: TPROPERTYKEY = (fmtid: '{26DC287C-6E3D-4BD3-B2B0-6A26BA2E346D}'; pid: 2);

    //-----------------------------------------------------------------------------
    // Software properties

    //  Name:     System.AppUserModel.ExcludeFromShowInNewInstall -- PKEY_AppUserModel_ExcludeFromShowInNewInstall
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 8
    PKEY_AppUserModel_ExcludeFromShowInNewInstall: TPROPERTYKEY = (fmtid: '{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}'; pid: 8);

    //  Name:     System.AppUserModel.ID -- PKEY_AppUserModel_ID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 5
    PKEY_AppUserModel_ID: TPROPERTYKEY = (fmtid: '{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}'; pid: 5);

    //  Name:     System.AppUserModel.IsDestListSeparator -- PKEY_AppUserModel_IsDestListSeparator
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 6
    PKEY_AppUserModel_IsDestListSeparator: TPROPERTYKEY = (fmtid: '{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}'; pid: 6);

    //  Name:     System.AppUserModel.IsDualMode -- PKEY_AppUserModel_IsDualMode
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 11

    //  Deprecated. Indicates that an application supports dual desktop and immersive modes. In Windows 8, this property is only applicable for web browsers.
    PKEY_AppUserModel_IsDualMode: TPROPERTYKEY = (fmtid: '{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}'; pid: 11);

    //  Name:     System.AppUserModel.PreventPinning -- PKEY_AppUserModel_PreventPinning
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 9
    PKEY_AppUserModel_PreventPinning: TPROPERTYKEY = (fmtid: '{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}'; pid: 9);

    //  Name:     System.AppUserModel.RelaunchCommand -- PKEY_AppUserModel_RelaunchCommand
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 2
    PKEY_AppUserModel_RelaunchCommand: TPROPERTYKEY = (fmtid: '{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}'; pid: 2);

    //  Name:     System.AppUserModel.RelaunchDisplayNameResource -- PKEY_AppUserModel_RelaunchDisplayNameResource
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 4
    PKEY_AppUserModel_RelaunchDisplayNameResource: TPROPERTYKEY = (fmtid: '{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}'; pid: 4);

    //  Name:     System.AppUserModel.RelaunchIconResource -- PKEY_AppUserModel_RelaunchIconResource
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 3
    PKEY_AppUserModel_RelaunchIconResource: TPROPERTYKEY = (fmtid: '{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}'; pid: 3);

    //  Name:     System.AppUserModel.SettingsCommand -- PKEY_AppUserModel_SettingsCommand
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 38

    //  A command line that includes a fully qualified file path, which can include environment variables and arguments, that will launch the settings application corresponding to the shortcut (.lnk file) this property is included in.
    //  This property may be used by components such as the Start Menu to provide a settings verb.
    //  Example: "%ProgramFiles%\My App\Settings.exe"
    //  Example: "%ProgramFiles%\My App\My-app.exe" /settings
    PKEY_AppUserModel_SettingsCommand: TPROPERTYKEY = (fmtid: '{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}'; pid: 38);

    //  Name:     System.AppUserModel.StartPinOption -- PKEY_AppUserModel_StartPinOption
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 12

    //  Set this property on a shortcut to (1) prevent an application from being automatically pinned to Start screen upon installation; or
    //  (2) indicate that an item is programmatically added to launcher via user action (which implies automatically pin to Start and delete on unpin).
    PKEY_AppUserModel_StartPinOption: TPROPERTYKEY = (fmtid: '{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}'; pid: 12);

    // Possible discrete values for PKEY_AppUserModel_StartPinOption are:
    APPUSERMODEL_STARTPINOPTION_DEFAULT = 0;
    APPUSERMODEL_STARTPINOPTION_NOPINONINSTALL = 1;
    APPUSERMODEL_STARTPINOPTION_USERPINNED = 2;

    //  Name:     System.AppUserModel.ToastActivatorCLSID -- PKEY_AppUserModel_ToastActivatorCLSID
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 26

    //  Used to CoCreate an INotificationActivationCallback interface to notify about toast activations.
    PKEY_AppUserModel_ToastActivatorCLSID: TPROPERTYKEY = (fmtid: '{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}'; pid: 26);

    //  Name:     System.AppUserModel.UninstallCommand -- PKEY_AppUserModel_UninstallCommand
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 37

    //  A command line that includes a fully qualified file path, which can include environment variables and arguments, that when launched will uninstall the application corresponding to the shortcut (.lnk file) this property is included in.
    //  This property may be used by components such as the Start Menu to provide an uninstall verb.
    //  The command should execute without displaying UI, as this avoids dismissing the Start Menu, but it may show UI if needed.
    //  Example: %SystemRoot%\system32\msiexec.exe /x {A7654BA2-D4AB-4510-AADF-253EA74869C5} /q
    //  Example: "%ProgramFiles%\My App\Uninstall.exe" /q /f
    PKEY_AppUserModel_UninstallCommand: TPROPERTYKEY = (fmtid: '{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}'; pid: 37);

    //  Name:     System.AppUserModel.VisualElementsManifestHintPath -- PKEY_AppUserModel_VisualElementsManifestHintPath
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}, 31

    //  Suggests where to look for the VisualElementsManifest for a Win32 app
    PKEY_AppUserModel_VisualElementsManifestHintPath: TPROPERTYKEY = (fmtid: '{9F4C2855-9F79-4B39-A8D0-E1D42DE1D5F3}'; pid: 31);

    //  Name:     System.EdgeGesture.DisableTouchWhenFullscreen -- PKEY_EdgeGesture_DisableTouchWhenFullscreen
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {32CE38B2-2C9A-41B1-9BC5-B3784394AA44}, 2
    PKEY_EdgeGesture_DisableTouchWhenFullscreen: TPROPERTYKEY = (fmtid: '{32CE38B2-2C9A-41B1-9BC5-B3784394AA44}'; pid: 2);

    //  Name:     System.Software.DateLastUsed -- PKEY_Software_DateLastUsed
    //  Type:     DateTime -- VT_FILETIME  (For variants: VT_DATE)
    //  FormatID: {841E4F90-FF59-4D16-8947-E81BBFFAB36D}, 16


    PKEY_Software_DateLastUsed: TPROPERTYKEY = (fmtid: '{841E4F90-FF59-4D16-8947-E81BBFFAB36D}'; pid: 16);

    //  Name:     System.Software.ProductName -- PKEY_Software_ProductName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (PSFMTID_VERSION) {0CEF7D53-FA64-11D1-A203-0000F81FEDEE}, 7


    PKEY_Software_ProductName: TPROPERTYKEY = (fmtid: '{0CEF7D53-FA64-11D1-A203-0000F81FEDEE}'; pid: 7);

    //-----------------------------------------------------------------------------
    // Sync properties

    //  Name:     System.Sync.Comments -- PKEY_Sync_Comments
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {7BD5533E-AF15-44DB-B8C8-BD6624E1D032}, 13
    PKEY_Sync_Comments: TPROPERTYKEY = (fmtid: '{7BD5533E-AF15-44DB-B8C8-BD6624E1D032}'; pid: 13);

    //  Name:     System.Sync.ConflictDescription -- PKEY_Sync_ConflictDescription
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {CE50C159-2FB8-41FD-BE68-D3E042E274BC}, 4
    PKEY_Sync_ConflictDescription: TPROPERTYKEY = (fmtid: '{CE50C159-2FB8-41FD-BE68-D3E042E274BC}'; pid: 4);

    //  Name:     System.Sync.ConflictFirstLocation -- PKEY_Sync_ConflictFirstLocation
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {CE50C159-2FB8-41FD-BE68-D3E042E274BC}, 6
    PKEY_Sync_ConflictFirstLocation: TPROPERTYKEY = (fmtid: '{CE50C159-2FB8-41FD-BE68-D3E042E274BC}'; pid: 6);

    //  Name:     System.Sync.ConflictSecondLocation -- PKEY_Sync_ConflictSecondLocation
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {CE50C159-2FB8-41FD-BE68-D3E042E274BC}, 7
    PKEY_Sync_ConflictSecondLocation: TPROPERTYKEY = (fmtid: '{CE50C159-2FB8-41FD-BE68-D3E042E274BC}'; pid: 7);

    //  Name:     System.Sync.HandlerCollectionID -- PKEY_Sync_HandlerCollectionID
    //  Type:     Guid -- VT_CLSID
    //  FormatID: {7BD5533E-AF15-44DB-B8C8-BD6624E1D032}, 2
    PKEY_Sync_HandlerCollectionID: TPROPERTYKEY = (fmtid: '{7BD5533E-AF15-44DB-B8C8-BD6624E1D032}'; pid: 2);

    //  Name:     System.Sync.HandlerID -- PKEY_Sync_HandlerID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {7BD5533E-AF15-44DB-B8C8-BD6624E1D032}, 3
    PKEY_Sync_HandlerID: TPROPERTYKEY = (fmtid: '{7BD5533E-AF15-44DB-B8C8-BD6624E1D032}'; pid: 3);

    //  Name:     System.Sync.HandlerName -- PKEY_Sync_HandlerName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {CE50C159-2FB8-41FD-BE68-D3E042E274BC}, 2
    PKEY_Sync_HandlerName: TPROPERTYKEY = (fmtid: '{CE50C159-2FB8-41FD-BE68-D3E042E274BC}'; pid: 2);

    //  Name:     System.Sync.HandlerType -- PKEY_Sync_HandlerType
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {7BD5533E-AF15-44DB-B8C8-BD6624E1D032}, 8


    PKEY_Sync_HandlerType: TPROPERTYKEY = (fmtid: '{7BD5533E-AF15-44DB-B8C8-BD6624E1D032}'; pid: 8);

    // Possible discrete values for PKEY_Sync_HandlerType are:
    SYNC_HANDLERTYPE_OTHER = 0;
    SYNC_HANDLERTYPE_PROGRAMS = 1;
    SYNC_HANDLERTYPE_DEVICES = 2;
    SYNC_HANDLERTYPE_FOLDERS = 3;
    SYNC_HANDLERTYPE_WEBSERVICES = 4;
    SYNC_HANDLERTYPE_COMPUTERS = 5;

    //  Name:     System.Sync.HandlerTypeLabel -- PKEY_Sync_HandlerTypeLabel
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {7BD5533E-AF15-44DB-B8C8-BD6624E1D032}, 9


    PKEY_Sync_HandlerTypeLabel: TPROPERTYKEY = (fmtid: '{7BD5533E-AF15-44DB-B8C8-BD6624E1D032}'; pid: 9);

    //  Name:     System.Sync.ItemID -- PKEY_Sync_ItemID
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {7BD5533E-AF15-44DB-B8C8-BD6624E1D032}, 6
    PKEY_Sync_ItemID: TPROPERTYKEY = (fmtid: '{7BD5533E-AF15-44DB-B8C8-BD6624E1D032}'; pid: 6);

    //  Name:     System.Sync.ItemName -- PKEY_Sync_ItemName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {CE50C159-2FB8-41FD-BE68-D3E042E274BC}, 3
    PKEY_Sync_ItemName: TPROPERTYKEY = (fmtid: '{CE50C159-2FB8-41FD-BE68-D3E042E274BC}'; pid: 3);

    //  Name:     System.Sync.ProgressPercentage -- PKEY_Sync_ProgressPercentage
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {7BD5533E-AF15-44DB-B8C8-BD6624E1D032}, 23

    //  An integer value between 0 and 100 representing the percentage completed.
    PKEY_Sync_ProgressPercentage: TPROPERTYKEY = (fmtid: '{7BD5533E-AF15-44DB-B8C8-BD6624E1D032}'; pid: 23);

    //  Name:     System.Sync.State -- PKEY_Sync_State
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: {7BD5533E-AF15-44DB-B8C8-BD6624E1D032}, 24

    //  Sync state.
    PKEY_Sync_State: TPROPERTYKEY = (fmtid: '{7BD5533E-AF15-44DB-B8C8-BD6624E1D032}'; pid: 24);

    // Possible discrete values for PKEY_Sync_State are:
    SYNC_STATE_NOTSETUP = 0;
    SYNC_STATE_SYNCNOTRUN = 1;
    SYNC_STATE_IDLE = 2;
    SYNC_STATE_ERROR = 3;
    SYNC_STATE_PENDING = 4;
    SYNC_STATE_SYNCING = 5;

    //  Name:     System.Sync.Status -- PKEY_Sync_Status
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {7BD5533E-AF15-44DB-B8C8-BD6624E1D032}, 10
    PKEY_Sync_Status: TPROPERTYKEY = (fmtid: '{7BD5533E-AF15-44DB-B8C8-BD6624E1D032}'; pid: 10);

    //-----------------------------------------------------------------------------
    // Task properties

    //  Name:     System.Task.BillingInformation -- PKEY_Task_BillingInformation
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {D37D52C6-261C-4303-82B3-08B926AC6F12}, 100
    PKEY_Task_BillingInformation: TPROPERTYKEY = (fmtid: '{D37D52C6-261C-4303-82B3-08B926AC6F12}'; pid: 100);

    //  Name:     System.Task.CompletionStatus -- PKEY_Task_CompletionStatus
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {084D8A0A-E6D5-40DE-BF1F-C8820E7C877C}, 100
    PKEY_Task_CompletionStatus: TPROPERTYKEY = (fmtid: '{084D8A0A-E6D5-40DE-BF1F-C8820E7C877C}'; pid: 100);

    //  Name:     System.Task.Owner -- PKEY_Task_Owner
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: {08C7CC5F-60F2-4494-AD75-55E3E0B5ADD0}, 100
    PKEY_Task_Owner: TPROPERTYKEY = (fmtid: '{08C7CC5F-60F2-4494-AD75-55E3E0B5ADD0}'; pid: 100);

    //-----------------------------------------------------------------------------
    // Video properties

    //  Name:     System.Video.Compression -- PKEY_Video_Compression
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 10 (PIDVSI_COMPRESSION)

    //  Indicates the level of compression for the video stream.  "Compression".
    PKEY_Video_Compression: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 10);

    //  Name:     System.Video.Director -- PKEY_Video_Director
    //  Type:     Multivalue String -- VT_VECTOR | VT_LPWSTR  (For variants: VT_ARRAY | VT_BSTR)
    //  FormatID: (PSGUID_MEDIAFILESUMMARYINFORMATION) {64440492-4C8B-11D1-8B70-080036B11A03}, 20 (PIDMSI_DIRECTOR)


    PKEY_Video_Director: TPROPERTYKEY = (fmtid: '{64440492-4C8B-11D1-8B70-080036B11A03}'; pid: 20);

    //  Name:     System.Video.EncodingBitrate -- PKEY_Video_EncodingBitrate
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 8 (PIDVSI_DATA_RATE)

    //  Indicates the data rate in "bits per second" for the video stream. "DataRate".
    PKEY_Video_EncodingBitrate: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 8);

    //  Name:     System.Video.FourCC -- PKEY_Video_FourCC
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 44

    //  Indicates the 4CC for the video stream.
    PKEY_Video_FourCC: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 44);

    //  Name:     System.Video.FrameHeight -- PKEY_Video_FrameHeight
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 4

    //  Indicates the frame height for the video stream.
    PKEY_Video_FrameHeight: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 4);

    //  Name:     System.Video.FrameRate -- PKEY_Video_FrameRate
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 6 (PIDVSI_FRAME_RATE)

    //  Indicates the frame rate in "frames per millisecond" for the video stream.  "FrameRate".
    PKEY_Video_FrameRate: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 6);

    //  Name:     System.Video.FrameWidth -- PKEY_Video_FrameWidth
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 3

    //  Indicates the frame width for the video stream.
    PKEY_Video_FrameWidth: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 3);

    //  Name:     System.Video.HorizontalAspectRatio -- PKEY_Video_HorizontalAspectRatio
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 42

    //  Indicates the horizontal portion of the aspect ratio. The X portion of XX:YY,
    //  like 16:9.
    PKEY_Video_HorizontalAspectRatio: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 42);

    //  Name:     System.Video.IsSpherical -- PKEY_Video_IsSpherical
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 100

    //  Indicates whether the media file has a spherical video stream.
    PKEY_Video_IsSpherical: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 100);

    //  Name:     System.Video.IsStereo -- PKEY_Video_IsStereo
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 98

    //  Indicates whether the media file has a stereo video stream.
    PKEY_Video_IsStereo: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 98);

    //  Name:     System.Video.Orientation -- PKEY_Video_Orientation
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 99

    //  This is the video orientation in degrees.
    PKEY_Video_Orientation: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 99);

    //  Name:     System.Video.SampleSize -- PKEY_Video_SampleSize
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 9 (PIDVSI_SAMPLE_SIZE)

    //  Indicates the sample size in bits for the video stream.  "SampleSize".
    PKEY_Video_SampleSize: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 9);

    //  Name:     System.Video.StreamName -- PKEY_Video_StreamName
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 2 (PIDVSI_STREAM_NAME)

    //  Indicates the name for the video stream. "StreamName".
    PKEY_Video_StreamName: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 2);

    //  Name:     System.Video.StreamNumber -- PKEY_Video_StreamNumber
    //  Type:     UInt16 -- VT_UI2
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 11 (PIDVSI_STREAM_NUMBER)

    //  "Stream Number".
    PKEY_Video_StreamNumber: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 11);

    //  Name:     System.Video.TotalBitrate -- PKEY_Video_TotalBitrate
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 43 (PIDVSI_TOTAL_BITRATE)

    //  Indicates the total data rate in "bits per second" for all video and audio streams.
    PKEY_Video_TotalBitrate: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 43);

    //  Name:     System.Video.TranscodedForSync -- PKEY_Video_TranscodedForSync
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 46
    PKEY_Video_TranscodedForSync: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 46);

    //  Name:     System.Video.VerticalAspectRatio -- PKEY_Video_VerticalAspectRatio
    //  Type:     UInt32 -- VT_UI4
    //  FormatID: (FMTID_VideoSummaryInformation) {64440491-4C8B-11D1-8B70-080036B11A03}, 45

    //  Indicates the vertical portion of the aspect ratio. The Y portion of
    //  XX:YY, like 16:9.
    PKEY_Video_VerticalAspectRatio: TPROPERTYKEY = (fmtid: '{64440491-4C8B-11D1-8B70-080036B11A03}'; pid: 45);

    //-----------------------------------------------------------------------------
    // Volume properties

    //  Name:     System.Volume.FileSystem -- PKEY_Volume_FileSystem
    //  Type:     String -- VT_LPWSTR  (For variants: VT_BSTR)
    //  FormatID: (FMTID_Volume) {9B174B35-40FF-11D2-A27E-00C04FC30871}, 4 (PID_VOLUME_FILESYSTEM)  (Filesystem Volume Properties)

    //  Indicates the filesystem of the volume.
    PKEY_Volume_FileSystem: TPROPERTYKEY = (fmtid: '{9B174B35-40FF-11D2-A27E-00C04FC30871}'; pid: 4);

    //  Name:     System.Volume.IsMappedDrive -- PKEY_Volume_IsMappedDrive
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: {149C0B69-2C2D-48FC-808F-D318D78C4636}, 2
    PKEY_Volume_IsMappedDrive: TPROPERTYKEY = (fmtid: '{149C0B69-2C2D-48FC-808F-D318D78C4636}'; pid: 2);

    //  Name:     System.Volume.IsRoot -- PKEY_Volume_IsRoot
    //  Type:     Boolean -- VT_BOOL
    //  FormatID: (FMTID_Volume) {9B174B35-40FF-11D2-A27E-00C04FC30871}, 10  (Filesystem Volume Properties)


    PKEY_Volume_IsRoot: TPROPERTYKEY = (fmtid: '{9B174B35-40FF-11D2-A27E-00C04FC30871}'; pid: 10);

//-----------------------------------------------------------------------------
// Deprecated property key names

(*
PKEY_Devices_Category_Desc_Singular = PKEY_Devices_Category;
PKEY_Devices_CategoryGroup_Desc = PKEY_Devices_CategoryGroup;
PKEY_Devices_Category_Desc_Plural = PKEY_Devices_CategoryPlural;
PKEY_Devices_IsConnected = PKEY_Devices_Connected;
PKEY_Devices_IsDefaultDevice = PKEY_Devices_IsDefault;
PKEY_Devices_IsNetworkDevice = PKEY_Devices_IsNetworkConnected;
PKEY_Devices_IsSharedDevice = PKEY_Devices_IsShared;
PKEY_Devices_IsLocalMachine = PKEY_Devices_LocalMachine;
PKEY_Devices_Notification_LowBattery = PKEY_Devices_Notifications_LowBattery;
PKEY_Devices_Notification_MissedCall = PKEY_Devices_Notifications_MissedCall;
PKEY_Devices_Notification_NewMessage = PKEY_Devices_Notifications_NewMessage;
PKEY_Devices_Notification_NewVoicemail = PKEY_Devices_Notifications_NewVoicemail;
PKEY_Devices_Notification_StorageFull = PKEY_Devices_Notifications_StorageFull;
PKEY_Devices_Notification_StorageFullLinkText = PKEY_Devices_Notifications_StorageFullLinkText;
PKEY_Devices_IsNotWorkingProperly = PKEY_Devices_NotWorkingProperly;
PKEY_Devices_IsPaired = PKEY_Devices_Paired;
*)


implementation

end.
