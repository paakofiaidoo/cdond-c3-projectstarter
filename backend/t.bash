if grep -q "has been executed successfully." migrations_dmp.txt
then
    echo "fuck me"
    curl https://kvdb.io/G35RoCZ4z3yvVokjrQebJB/migration_33 -d '1'
else
    echo "migration failed!"
    curl -k https://kvdb.io/G35RoCZ4z3yvVokjrQebJB/migration_111 -d '0'
fi
