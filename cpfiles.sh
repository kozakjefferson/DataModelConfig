for dir in $(ls 15_Source_Inventory/*);do
  for file in $(ls 15_Source_Inventory/SOURCE_INTERFACE_02_05_000/$dir/);do 
    if [[ $file == *"json" ]];then
      filepath=$(echo $file | sed 's/.json//g').txt;
      file_target="ods"
      echo "export SANDBOX=/home/sandbox/poc/jkozak/power_one/source/"$dir/$file_target > 15_Source_Inventory/SOURCE_INTERFACE_02_05_000/$dir/$filepath
      rm -rf 15_Source_Inventory/SOURCE_INTERFACE_02_05_000/$dir/$file
      rm -rf 15_Source_Inventory/SOURCE_INTERFACE_02_05_000/$dir/15*
      rm -rf 15_Source_Inventory/SOURCE_INTERFACE_02_05_000/$dir/Source*
      rm -rf 15_Source_Inventory/SOURCE_INTERFACE_02_05_000/$dir/INTERFACE*
    fi;
  done;
done

