Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2FF1F8226
	for <lists+linux-rockchip@lfdr.de>; Sat, 13 Jun 2020 11:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=webZBA2UHi1RieQ5nZacjTILv/sMTAP5Jm5gLBTTwAc=; b=J1P
	knAWAHgP5IDytSH/E3SYi7TTRM7l7sSrPgl58VO3yOQzV928U4w6LGvzdDL+CBy/P9V23rvZ+BKgc
	qqWuEXP0PH97gh11u4vyjtKDi2u1ZcZx7MIE8grSB+teALKjYFJS7q5U15n+92Q768UUBm6u55i8+
	5YXraX3Bfed4hX/XWWQyH6hpced4iXVDR2w89FN3Rcu1TL+TwTfcMVGLEYvaf9PDQg5qCUHAPqgnV
	5WITGIsOiQaiTllWPxCpl2ra4kY4xXDilF6ujvVo9TAnzzs2XtY0DgEbXlCZlLWzHiDvcMaH8HB8q
	29dKcNP8s65R4OxiCMhkBeIWW1YnBrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk2Ew-0002UR-2i; Sat, 13 Jun 2020 09:14:14 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk2Es-0002SO-8Z
 for linux-rockchip@lists.infradead.org; Sat, 13 Jun 2020 09:14:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 705492A0D2F
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [RESEND PATCH v3 0/6] media: staging: rkisp1: bugs fixes and vars
 renames
Date: Sat, 13 Jun 2020 11:13:47 +0200
Message-Id: <20200613091353.12689-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_021410_429835_FCCCC25A 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, sakari.ailus@linux.intel.com, kernel@collabora.com,
 ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org


RESEND the patchset because I forgot to add the first two patches
to the set (now also dropping CC to stable)

The first two patches in this patchset are two bug fixes related to the enumeration and
settings of the sink format of the resizer entity.
The next 3 patches are renaming/removing macros and variables.
patch 6 adds documentation to the struct rkisp1_isp_mbus_info

changes from v2:
- patch 3 is new - remove macro RKISP1_DIR_SINK_SRC since the code is more readable without it.
- patch 5 - rename 'direction' to 'isp_pads_mask' instead of 'isp_pads_flags'
- patch 6 is new - add documentation of the struct 'rkisp1_isp_mbus_info'

changes from v1:
- added "Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"
to the commit log of the first two patches.
- added two patches. One patch rename the macros "RKISP1_DIR_*"
to "RKISP1_ISP_SD_*", another that rename the field 'direction'
in 'struct rkisp1_isp_mbus_info' to 'isp_pads_flags'

Dafna Hirschfeld (6):
  media: staging: rkisp1: rsz: supported formats are the isp's src
    formats, not sink formats
  media: staging: rkisp1: rsz: set default format if the given format is
    not RKISP1_DIR_SRC
  media: staging: rkisp1: remove macro RKISP1_DIR_SINK_SRC
  media: staging: rkisp1: rename macros 'RKISP1_DIR_*' to
    'RKISP1_ISP_SD_*'
  media: staging: rkisp1: rename the field 'direction' in
    'rkisp1_isp_mbus_info' to 'isp_pads_mask'
  media: staging: rkisp1: common: add documentation for struct
    rkisp1_isp_mbus_info

 drivers/staging/media/rkisp1/rkisp1-common.h  | 18 ++++++-
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 50 +++++++++----------
 drivers/staging/media/rkisp1/rkisp1-resizer.c |  6 +--
 3 files changed, 43 insertions(+), 31 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
