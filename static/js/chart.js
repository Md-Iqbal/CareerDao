"use strict";
$(function () {

	// chart
	var ctx = $("#day");
	var lineChart = new Chart(ctx, {
		type: 'line',
		data: {
			labels: ["Jan 19", "Feb 19", "Mar 19", "Apr 19", "May 19", "June 19", "July 19"],
			datasets: [
				{
					label: "Payments",
					data: [1000, 20000, 2000, 28000, 12000, 25000, 8000],
					backgroundColor: "rgba(158,190,241,.8)",
					borderColor: "transparent",
					pointRadius: 0,
					spanGaps: true,
				},
				{
					label: "Earning",
					data: [22000, 8000, 24000, 10000,25000, 12000, 36000],
					backgroundColor: "rgba(45,206,212,.8)",
					borderColor: "transparent",
					pointRadius: 0,
					spanGaps: true,
				}
			]
		},
		options: {
	        legend: {
	            display: true,
	            position: 'top',
	            reverse: true,
	            labels: {
	                fontColor: '#7d7d7d'
	            }
	    	}
		}
	});



	var quarter = $("#week");
	var chartQuarter = new Chart(quarter, {
		type: 'line',
		data: {
			labels: ["Jan 01", "Jan 08", "Jan 15", "Jan 23","Jan 30", "Feb 06", 
			"Feb 13", "Feb 20", "Feb 27", "Mar 07", "Mar 14", "Mar 21"],
			datasets: [
				{
					label: "Payments",
					data: [450, 750, 700, 650, 850, 700, 900, 700, 650,750,700,950],
					backgroundColor: "rgba(0,174,255,0.6)",
					borderColor: "transparent",
					pointRadius: 0,
					spanGaps: true,
				},
				{
					label: "Earning",
					data: [900, 1500, 1400, 1300, 1700, 1400, 1800, 1400, 1100,1500,1400,1900],
					backgroundColor: "rgba(50,210,201,0.6)",
					borderColor: "transparent",
					pointRadius: 0,
					spanGaps: true,
				}
			]
		}
	});



	var halfYear = $("#month");
	var chartHalfYear = new Chart(halfYear, {
		type: 'line',
		data: {
			labels: ["Jan 01", "Jan 15", "Feb 01", "Feb 15","March 01", "March 15","April 01",
			 "April 15", "May 01", "May 15", "June 01", "June 15"],
			datasets: [
				{
					label: "Payments",
					data: [850, 650, 800, 750, 550, 800, 900, 600, 750,550,800,700],
					backgroundColor: "rgba(0,174,255,0.6)",
					borderColor: "transparent",
					pointRadius: 0,
					spanGaps: true,
				},
				{
					label: "Earning",
					data: [700, 900, 1200, 800, 1200, 900, 1200, 800, 1200,1100,900,1300],
					backgroundColor: "rgba(50,210,201,0.6)",
					borderColor: "transparent",
					pointRadius: 0,
					spanGaps: true,
				}
			]
		}
	});


	

});

	var year = $("#earning-chart");

	var barchart = new Chart(year, {
		type: 'doughnut',
		data: {
			labels: ["Earnings","Payments","Earnings","Payments"],
			datasets: [
				{
					label: "Point",
					backgroundColor: ["#c97ce5",'#ffb3b3','#4ed0f8','#f9ca88'],
					data: [20,20,20,20]
				}
			]
		},

		options: {
			cutoutPercentage: 60,
			animation: {
				animateScale: true
			}
		}
	});


	var bid = $("#bid-chart");
	Chart.defaults.scale.ticks.beginAtZero = true;

	var barchart = new Chart(bid, {
		type: 'bar',
		data: {
			labels:["1","2","3","4","5","6","7","8"],
			datasets: [
				{
					label: 'bid',
					data: [15,20,23,16,30,45,40,10],
					backgroundColor: '#4ed0f8'
				}
			]
		},

		options: {
			cutoutPercentage: 10,
			animation: {
				animateScale: true
			}
		}
	});



	var total_earn = $("#total-earning-chart");
	Chart.defaults.scale.ticks.beginAtZero = true;

	var barchart = new Chart(total_earn, {
		type: 'line',
		data: {
			labels:["1","2","3","4","5","6","7","8"],
			datasets: [
				{
					fill: false,
					borderColor: '#8890f9',
					label: 'national',
					data: [0,15,23,25,10,8,20,30]
				},
				{
					fill: false,
					borderColor: "#c97ce5",
					label: 'international',
					data: [20,8,7,16,10,24,36,7]
				}
			]
		},

		options: {
			cutoutPercentage: 10,
			animation: {
				animateScale: true
			}
		}
	});