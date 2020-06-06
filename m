Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F331F0639
	for <lists+linux-rockchip@lfdr.de>; Sat,  6 Jun 2020 12:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9ef8tvcVnuF96rvaZrKat5wyCWZ2ZDe/Qfg/tewYbmE=; b=Mzo
	eG6n24nyUVplTuxaGkWfIkpE5BUQl9LjCvayQ/YHpEIFlR3gDE8yv0868HrVxtTC4weaZB5/H49aB
	eDLj7XsPj48oISRraOWUg9jT8w1LcY1U0qTkUuHVG2y/H/YiK2iO1Cueou+Bx1rzWZbRmo/+OMLY6
	fFJAVLCswW2J6THkNYyFMzRyAhSytwpVPHDMwn9jriS5kkVHgNd0HsKyPDtiQgnFAW+4mPMfrxunK
	ILKI4puULo1eHEV2Je3eBa2XGzERA6qicRPUGS7KbdzVdvi+t675R8C+qtOaBWhcgi8vTlgXqtNAf
	guc8iG/2wFX8ITeZAk60q6pc6LkagyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhWUi-0002kn-9H; Sat, 06 Jun 2020 10:56:08 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhWUb-0002gP-VU
 for linux-rockchip@lists.infradead.org; Sat, 06 Jun 2020 10:56:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 0DB56261A33
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v4l-utils 0/4] v4l2-ctl: add support to the CSC API
Date: Sat,  6 Jun 2020 12:55:34 +0200
Message-Id: <20200606105538.30147-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_035602_166949_3D883F64 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, p.zabel@pengutronix.de,
 dafna3@gmail.com, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, skhan@linuxfoundation.org, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patchset is the userspace support for the CSC API RFC v4:
https://patchwork.kernel.org/project/linux-media/list/?series=298891

Patches Summary:
================

patch 1 - allows userspace to set the quantization and {ycbcr/hsv}_enc
fields in the command 'v4l2-ctl --set-fmt-video ..'
it also adds the new enumeration flags to the compliance tests.

patch 2 - adds the new enumeration flags V4L2_FMT_FLAG_CSC* to
the function that prints the string description of the flags.
The array fmtdesc_def is replaced by a macro FMTDESC_DEF(enc_type)
since the flags V4L2_FMT_FLAG_CSC_YCBCR_ENC,V4L2_FMT_FLAG_CSC_HSV_ENC,
have identical value and the string should change according to whether
the pixelformat is HSV or not.

patches 4, 3 - are similar to patches 1, 2 but for subdevices.
So patch 3 adds support for the CSC API for subdevices
and patch 4 adds the new enumeration flags V4L2_SUBDEV_MBUS_CODE_CSC*
to the framework that prints the related string description

Testing:
=======

I added a python script to run all possible combinations of CSC
settings on vivid:
https://gitlab.collabora.com/dafna/v4l-utils/-/blob/csc-rfc-v4-jun-6-mittag/contrib/test/vivid_test_csc.py

The commands to run the script:

git clone --single-branch --branch csc-rfc-v4-jun-6-mittag  https://gitlab.collabora.com/dafna/v4l-utils.git
cd v4l-utils/contrib/test/
modprobe vivid
python3 vivid_test_csc.py

Also added test for rkisp1:
https://gitlab.collabora.com/dafna/v4l-utils/-/blob/csc-rfc-v4-jun-6-mittag/contrib/test/rkisp1-unit-tests.sh

To run the test:

git clone --single-branch --branch csc-rfc-v4-jun-6-mittag  https://gitlab.collabora.com/dafna/v4l-utils.git
cd v4l-utils/contrib/test/
./rkisp1-unit-tests.sh


Dafna Hirschfeld (4):
  v4l2-ctl: vidcap: Add support for the CSC API
  v4l2: common: add the flags V4L2_FMT_FLAG_CSC* to the list that maps
    flags to str
  v4l2-ctl: subdev: Add support for the CSC API in the subdevices
  v4l2-ctl: subdev: Add the flags to the list of supported mbus formats

 utils/common/v4l2-info.cpp                  | 41 +++++++++++++++++----
 utils/common/v4l2-info.h                    |  6 ++-
 utils/v4l2-compliance/v4l2-test-formats.cpp |  3 +-
 utils/v4l2-ctl/v4l2-ctl-subdev.cpp          | 18 +++++++--
 utils/v4l2-ctl/v4l2-ctl-vidcap.cpp          | 22 ++++++++++-
 utils/v4l2-ctl/v4l2-ctl.cpp                 | 16 ++++++--
 6 files changed, 86 insertions(+), 20 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
