# *************************************************************************************************
# Copyright (c) 2021 Calypso Networks Association                                                 *
# https://www.calypsonet-asso.org/                                                                *
#                                                                                                 *
# See the NOTICE file(s) distributed with this work for additional information regarding          *
# copyright ownership.                                                                            *
#                                                                                                 *
# This program and the accompanying materials are made available under the terms of the Eclipse   *
# Public License 2.0 which is available at http://www.eclipse.org/legal/epl-2.0                   *
#                                                                                                 *
# SPDX-License-Identifier: EPL-2.0                                                                *
# *************************************************************************************************/

# Git
INCLUDE(FindGit)
FIND_PACKAGE(Git)
IF(NOT Git_FOUND)
	MESSAGE(FATAL_ERROR "Git not found!")
ENDIF()

# External Project
INCLUDE(FetchContent)

# Project
SET(EP_CALYPSONET_TERMINAL_READER "calypsonet-terminal-reader-cpp-api")

FetchContent_Populate (
	${EP_CALYPSONET_TERMINAL_READER}
	
	GIT_REPOSITORY https://github.com/calypsonet/${EP_CALYPSONET_TERMINAL_READER}.git
	GIT_TAG        ${CALYPSONET_VERSION}
	GIT_SHALLOW    ON
	SOURCE_DIR     ../externals/${EP_CALYPSONET_TERMINAL_READER}
)

ADD_SUBDIRECTORY(externals/${EP_CALYPSONET_TERMINAL_READER})
