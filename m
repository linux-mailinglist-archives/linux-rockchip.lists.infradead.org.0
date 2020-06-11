Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA461F6B1E
	for <lists+linux-rockchip@lfdr.de>; Thu, 11 Jun 2020 17:35:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=m0EzJD/6/GcDR135Upf4CyN9UdfpB4Ga1w7ybQFaA2s=; b=ChF
	v4fwTUq+lk83H7AL2WRm/Cqyt9V+6Yck6mL3ZWeC9qkgW4rlrpNhFHkFQVR12O1r77dsfF0OHAAc/
	SA7cIUlGogXQodEHlACEvklpoOSaOT6HCki4r6lrmzEQwcsrp0e70T/IOEKeGRXbjMSgJQVePgpC4
	y8HiXC41aof/CSqF7pBEWSdAMRH6ZHVsjzVNadJx+FC418GFfLqQWHM1KYxX/q7XD8mrWiH8s7ktr
	tONKzpVUtHEnEdokDBiNxy143eSvFiADVrSuvHqh5iKvz2vFrwYgEPRBdRo7M92pm8zxn0c9jZFTl
	haNNEvtJrKeOJBYiYsNCri0PJCO/AhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPEy-0001cU-Pd; Thu, 11 Jun 2020 15:35:40 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPEv-0001aq-Ro
 for linux-rockchip@lists.infradead.org; Thu, 11 Jun 2020 15:35:39 +0000
Received: from localhost.localdomain
 (p200300cb871f5b00895b3f12fcab1eee.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:895b:3f12:fcab:1eee])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 266C22A5079;
 Thu, 11 Jun 2020 16:35:35 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v3 0/4] rkisp1: bugs fixes and vars renames
Date: Thu, 11 Jun 2020 17:35:23 +0200
Message-Id: <20200611153527.24506-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_083538_037130_16705E02 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 stable@vger.kernel.org, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The first two patches in this patchset are two bug fixes related to the enumeration and
settings of the sink format of the resizer entity.
The next 3 patches are renaming/removing of macros and variables.
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

Dafna Hirschfeld (4):
  media: staging: rkisp1: remove macro RKISP1_DIR_SINK_SRC
  media: staging: rkisp1: rename macros 'RKISP1_DIR_*' to
    'RKISP1_ISP_SD_*'
  media: staging: rkisp1: rename the field 'direction' in
    'rkisp1_isp_mbus_info' to 'isp_pads_mask'
  media: staging: rkisp1: common: add documentation for struct
    rkisp1_isp_mbus_info

 drivers/staging/media/rkisp1/rkisp1-common.h  | 20 ++++++--
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 46 +++++++++----------
 drivers/staging/media/rkisp1/rkisp1-resizer.c |  2 +-
 3 files changed, 40 insertions(+), 28 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
