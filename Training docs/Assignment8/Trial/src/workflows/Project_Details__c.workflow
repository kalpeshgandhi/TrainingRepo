<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
	<alerts>
		<fullName>Email_notification_End_date</fullName>
		<description>Email notification End date.</description>
		<protected>true</protected>
		<recipients>
			<recipient>kalpesh.gandhi@eternussolutions.com</recipient>
			<type>user</type>
		</recipients>
		<senderType>CurrentUser</senderType>
		<template>unfiled$public/Email_notification_End_date</template>
	</alerts>
	<alerts>
		<fullName>Email_notification_End_dateq</fullName>
		<description>Email notification End date.</description>
		<protected>true</protected>
		<recipients>
			<recipient>kalpesh.gandhi@eternussolutions.com</recipient>
			<type>user</type>
		</recipients>
		<senderType>CurrentUser</senderType>
		<template>unfiled$public/Email_notification_End_date</template>
	</alerts>
	<alerts>
		<fullName>Project_Is_Created</fullName>
		<description>Project Is Created.</description>
		<protected>true</protected>
		<recipients>
			<recipient>Manager</recipient>
			<type>role</type>
		</recipients>
		<senderType>CurrentUser</senderType>
		<template>unfiled$public/Project_Is_Created</template>
	</alerts>
	<fieldUpdates>
		<fullName>Project_Status_Update</fullName>
		<description>Set the Project status as Closed if the End Date is
			today.</description>
		<field>Status__c</field>
		<literalValue>Closed</literalValue>
		<name>Project Status Update</name>
		<notifyAssignee>false</notifyAssignee>
		<operation>Literal</operation>
		<protected>false</protected>
	</fieldUpdates>
	<rules>
		<fullName>Email Notification And Add task When Project Is Created%2E</fullName>
		<actions>
			<name>Project_Is_Created</name>
			<type>Alert</type>
		</actions>
		<actions>
			<name>Project_Is_Created</name>
			<type>Task</type>
		</actions>
		<active>true</active>
		<criteriaItems>
			<field>Project_Details__c.End_Date__c</field>
			<operation>notEqual</operation>
		</criteriaItems>
		<description>Create a Calendar task for the Project whenever a new
			project is created and send Email Notification to Project Manager.</description>
		<triggerType>onCreateOnly</triggerType>
	</rules>
	<rules>
		<fullName>Email notification to Project Manager when End date is 5
			Days Prior</fullName>
		<active>true</active>
		<criteriaItems>
			<field>Project_Details__c.End_Date__c</field>
			<operation>notEqual</operation>
		</criteriaItems>
		<description>Email notification to remind the Project Manager about
			the end date of the project 5 days prior.</description>
		<triggerType>onCreateOrTriggeringUpdate</triggerType>
		<workflowTimeTriggers>
			<actions>
				<name>Email_notification_End_dateq</name>
				<type>Alert</type>
			</actions>
			<offsetFromField>Project_Details__c.End_Date__c</offsetFromField>
			<timeLength>-5</timeLength>
			<workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
		</workflowTimeTriggers>
	</rules>
	<rules>
		<fullName>Project Status Is Closed When End Date Is Today%2E</fullName>
		<actions>
			<name>Project_Status_Update</name>
			<type>FieldUpdate</type>
		</actions>
		<active>true</active>
		<description>Sets the Project status as Closed if the End Date is
			today.</description>
		<formula>IF( End_Date__c= TODAY(), True, False)</formula>
		<triggerType>onCreateOrTriggeringUpdate</triggerType>
	</rules>
	<tasks>
		<fullName>New_Project</fullName>
		<assignedTo>CEO</assignedTo>
		<assignedToType>role</assignedToType>
		<description>New Project Is Created</description>
		<dueDateOffset>0</dueDateOffset>
		<notifyAssignee>false</notifyAssignee>
		<offsetFromField>Project_Details__c.End_Date__c</offsetFromField>
		<priority>Normal</priority>
		<protected>true</protected>
		<status>Not Started</status>
		<subject>New Project</subject>
	</tasks>
	<tasks>
		<fullName>Project_Is_Created</fullName>
		<assignedTo>Manager</assignedTo>
		<assignedToType>role</assignedToType>
		<description>Project Is Created.</description>
		<dueDateOffset>0</dueDateOffset>
		<notifyAssignee>false</notifyAssignee>
		<offsetFromField>Project_Details__c.End_Date__c</offsetFromField>
		<priority>Normal</priority>
		<protected>true</protected>
		<status>Not Started</status>
		<subject>Project Is Created.</subject>
	</tasks>
</Workflow>
