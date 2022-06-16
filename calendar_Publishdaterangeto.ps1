<#
.DESCRIPTION
    A script to change how much of a calendar is published
    Works on both norwegian and english calendars
    
.NOTES
    File Name      : calendar_publishdaterangeto.ps1
    Author         : Mikael Olsen (Mikael.olsen@arribatec.com)
    Prerequisite   : PowerShell V2 over Vista and upper. 

    Run the script, then change /kalender to /calendar, and :\kalender to :\calendar, 
    then run again to get both norwegian and english mailboxes
#>

Connect-ExchangeOnline

# ENGLISH MAILBOXES

$all=Get-Mailbox -RecipientTypeDetails UserMailbox -ResultSize unlimited | Where {$_.FolderPath -eq "/Calendar"}

$all | ForEach {Set-MailboxCalendarFolder -Identity “$($_.alias):\Calendar” -PublishDateRangeTo OneYear}


# NORWEGIAN MAILBOXES


$all=Get-Mailbox -RecipientTypeDetails UserMailbox -ResultSize unlimited | Where {$_.FolderPath -eq "/Kalender"}

$all | ForEach {Set-MailboxCalendarFolder -Identity “$($_.alias):\Kalender” -PublishDateRangeTo OneYear}






