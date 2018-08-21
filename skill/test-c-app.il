

procedure( test-c-app( )
			(let ( childPID result) 
				childPID = ipcBeginProcess(  
				simplifyFilename( "path-to-app");
				) 
				ipcWaitForProcess( childPID )  ; wait for a process
				ipcWriteProcess( childPID strcat("& hello world " "\n") ) ; !important! add \n to the end of your string 
				result = ipcReadProcess( childPID 1) ; read 
				ipcKillProcess( childPID ) ;kill
				result
			)    ; end let
		)    ; end procedure 

