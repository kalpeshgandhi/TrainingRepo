<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
	<alerts>
		<fullName>Leave_Approval_Email</fullName>
		<description>Leave Approval Email</description>
		<protected>false</protected>
		<recipients>
			<recipient>East_Manager</recipient>
			<type>role</type>
		</recipients>
		<recipients>
			<recipient>West_Manager</recipient>
			<type>role</type>
		</recipients>
		<senderType>CurrentUser</senderType>
		<template>unfiled$public/Approval_For_Manager</template>
	</alerts>
	<alerts>
		<fullName>This_Is_a_Email_Alert_For_1Leave</fullName>
		<description>This Is a Email Alert For Leave</description>
		<protected>false</protected>
		<recipients>
			<recipient>East_Manager</recipient>
			<type>role</type>
		</recipients>
		<recipients>
			<recipient>West_Manager</recipient>
			<type>role</type>
		</recipients>
		<senderType>CurrentUser</senderType>
		<template>unfiled$public/Approval_For_Manager</template>
	</alerts>
	<alerts>
		<fullName>This_Is_a_Email_Alert_For_Leave</fullName>
		<description>This Is a Email Alert For Leave</description>
		<protected>false</protected>
		<recipients>
			<recipient>East_Manager</recipient>
			<type>role</type>
		</recipients>
		<recipients>
			<recipient>West_Manager</recipient>
			<type>role</type>
		</recipients>
		<senderType>CurrentUser</senderType>
		<template>unfiled$public/Approval_For_Manager</template>
	</alerts>
</Workflow>
