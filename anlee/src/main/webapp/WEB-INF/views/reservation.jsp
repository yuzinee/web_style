<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.11/index.global.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="/js/common.js"></script>
<title>title</title>
</head>

<style>
    /* 캘린더 테이블 스타일 */
    #calendar {
        width: 100%;
        height: 800px;
        background-color: #ffffff;
    }

</style>

<body>
	<div id='calendar'>
		<div id='calendar'></div>
	</div>	
</body>

<script>
	$(document).ready(function() {
		var calendarEl = document.getElementById('calendar');
	    var calendar = new FullCalendar.Calendar(calendarEl, {
	        initialView: 'dayGridMonth',
	        events: [
	            {
	                title: '일정',
	                start: '2024-04-26',
	                end: '2024-04-27'
	            }
	        ],
	        dateClick: function(info) {
	            console.log(info);
	        },
	        displayEventTime: false
	    });
	
	    calendar.render();
	});
</script>
</html>