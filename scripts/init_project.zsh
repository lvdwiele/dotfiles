#!/bin/sh

die() {
    echo "$(basename $0):" "$@" 1>&2
    exit 1
}

if [ $# -lt 2 ]
then
  die "Usage: init-project <client_name> <project_name>"
fi

# mkdir -p "~/Code/work/clients/$1/$2"
# mkdir -p "~/Code/work/clients/$1/$2/Assets"
# mkdir -p "~/Code/work/clients/$1/$2/AI"
# mkdir -p "~/Code/work/clients/$1/$2/PSD"
# mkdir -p "~/Code/work/clients/$1/$2/Ref"
# mkdir -p "~/Code/work/clients/$1/$2/Data"
# mkdir -p "~/Code/work/clients/$1/$2/Code"

# mkdir -p "~/Documents/work/clients/$1/$2"

# mkdir -p "~/Documents/work/clients/$1/$2/01 - Management"
# mkdir -p "~/Documents/work/clients/$1/$2/01 - Management/01 - Scope"
# mkdir -p "~/Documents/work/clients/$1/$2/01 - Management/02 - Planning"
# mkdir -p "~/Documents/work/clients/$1/$2/01 - Management/03 - Resourcing"
# mkdir -p "~/Documents/work/clients/$1/$2/01 - Management/04 - Quality Management"
# mkdir -p "~/Documents/work/clients/$1/$2/01 - Management/05 - Status Reporting"
# mkdir -p "~/Documents/work/clients/$1/$2/01 - Management/06 - Change Requests"
# mkdir -p "~/Documents/work/clients/$1/$2/01 - Management/07 - Issues"

# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/01 - Process"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/01 - Process/Requirements"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/01 - Process/To-Be Processes"

# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/02 - Data Conversion"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/02 - Data Conversion/Data Conversion Plan"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/02 - Data Conversion/Data Conversion Strategy"

# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/03 - Interfaces"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/03 - Interfaces/Interface Plan"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/03 - Interfaces/Interface Strategy"

# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/04 - Configuration"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/04 - Configuration/Application Setup"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/04 - Configuration/Functional Design"

# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/05 - Development"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/05 - Development/Application Setup"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/05 - Development/Technical Design"

# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/06 - Database"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/06 - Database/Environment Plan"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/06 - Database/Patch Management"

# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/07 - Test"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/07 - Test/Test Plan"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/07 - Test/Test Strategy"
# mkdir -p "~/Documents/work/clients/$1/$2/02 - Deliverables/07 - Test/Test Scripts"