/**
 * Auto complete
 */
					
						$(document).ready(function() {
							$(function() {
								$("#input").autocomplete({
									source: function(request, response) {
										$.ajax({
											url: "/ajax/automatch",
											type: "POST",
											data: { term: request.term },
											dataType: "json",
											success: function(data) {
												response($.map(data, function(v,i){
													return {label: v.suburb, value: v.suburb};
												}));
											}
										});
									}
								});
							});
						});
					