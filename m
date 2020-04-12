Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C5E1A5E7D
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Apr 2020 14:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zu2kwcLniyQnaLeG22D7mnvhVBusgSY79q/fupJQan4=; b=nFub/6Cmj7BAEp
	RETJ3i1Jm8fX7huXtJ75rnur+9iDVMSE4lPINd8FNas189eThp19Lt2yQITYAFJeCI+4Zr8hQ+IOo
	ne6rowGU6ZNR1bz3zGEbfXeDX7gYhPxAaQ+Kx68GISaa+mBrcwTW7bEzQ6UlqzujNaNishZAQp1O5
	o4lvjHocNAGS714QqGD+ZAM7aYeEli/IzAF3wPNaWcB6y1B1JvWDaLc6VBeDzp61Mv1q6y3EqlYZ9
	y76MW8DdM5ZgVEhPlL1wVPufrxpCe4+F1ZL7/KoL/RmwKcI/LF/BTttCZ//hnpJR3nw2F2+kD1PkC
	58Phop7SR9acepmvKALQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNbMZ-0007At-FW; Sun, 12 Apr 2020 12:05:23 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNbMV-00078o-GC
 for linux-rockchip@lists.infradead.org; Sun, 12 Apr 2020 12:05:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 28DDB2A0712
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com
Subject: [PATCH v2 0/4] media: staging: rkisp1: add support for RGB formats
Date: Sun, 12 Apr 2020 14:05:00 +0200
Message-Id: <20200412120504.6536-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_050519_776352_2C6308A5 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add support for RGB formats in rkisp1, (currently only RGB565 is correctly captured)
The patchset is rebased on top of v3 of the patchset
"rkisp1: use enum v4l2_pixel_encoding instead of rkisp1_fmt_pix_type"

patches summary:

patch 1: fix a redundant call to v4l2_format_info in the resizer code
patch 2: remove a redundant if statement that checks that the resizer format is YUV
patch 3: fix a bug that changes the default hdiv,vdiv in the resizer scale for RGB formats.
This bug changes the YUV ratios from 4:2:2 to 4:4:4 and the capture for RGB times out
patch 4: removes the restriction in the validation function of the capture that forces the
mbus encoding to be the same as the capture encoding. This is because for RGB formats
the mbus format should be MEDIA_BUS_FMT_YUYV8_2X8

changes from v1:
* rebase the patchset on top of v3 of "rkisp1: use enum v4l2_pixel_encoding instead of rkisp1_fmt_pix_type"
* patch 1 - use cap->pix.info directly instead of saving it to a variable
* add another patch that removes a redundant if statement in func rkisp1_rsz_config
* patch 4 - change the if statement in rkisp1_capture_link_validate to list the supported
options instead of the unsupported options


Dafna Hirschfeld (4):
  media: staging: rkisp1: rsz: get the capture format info from the
    capture struct
  media: staging: rkisp1: rsz: remove redundant if statement and add
    inline doc
  media: staging: rkisp1: rsz: change (hv)div only if capture format is
    YUV
  media: staging: rkisp1: cap: enable RGB capture format with YUV media
    bus

 drivers/staging/media/rkisp1/rkisp1-capture.c |  6 ++++-
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 26 +++++++++++++------
 2 files changed, 23 insertions(+), 9 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
