Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D846A1F3F48
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jun 2020 17:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=q37xpZlncoHg26nDbaRm4At9osJyD9M7RKiu0EDqNyA=; b=Nlf
	wT1EFv0SGs24w/SyrCczdu0eL5qYBwBPTsX8t0GvfMcvu3VwKRVotVkwIEj8ty1A+u1Zrj0a0uSdk
	wMg9J0cEuXtxe7B217NsYEH3gnu1GyNzMx+UJmvhAZW72TBNS2mtEYRdqlvhH8cjMPJJQVBTgJxqz
	Qs2kXAgbwOuEaatV3Nubx+6E6vjhk+GRGKUQQcsXt4kG/vPyay/D1s/n0ZPgvsOv9IdImeLH3TiBE
	P6UNfMct674mlXJJmPDAoEZTp2YGF0cFp4wIMXoxJlEnZNhIlJEKh2eWpVoIM22kpxQnzcOuiwSsi
	9ZYkpnrMaksGaCSonTHGBD0XQBd8tjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jigBf-0002v3-Nh; Tue, 09 Jun 2020 15:29:15 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jigBY-0002sK-95
 for linux-rockchip@lists.infradead.org; Tue, 09 Jun 2020 15:29:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id E054F2A3B13
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org,
	laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 0/4] media: staging: rkisp1: bugs fixes and vars renames
Date: Tue,  9 Jun 2020 17:28:21 +0200
Message-Id: <20200609152825.24772-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_082908_576883_2F4E4C56 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

The first two patches in this patchset are two bug fixes related to the enumeration and
settings of the sink format of the resizer entity.
The two other patches are renaming of macros and the variables.

changes from v1:
- added "Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"
to the commit log of the first two patches.
- added two patches. One patch rename the macros "RKISP1_DIR_*"
to "RKISP1_ISP_SD_*", another that rename the field 'direction'
in 'struct rkisp1_isp_mbus_info' to 'isp_pads_flags'

Dafna Hirschfeld (4):
  media: staging: rkisp1: rsz: supported formats are the isp's src
    formats, not sink formats
  media: staging: rkisp1: rsz: set default format if the given format is
    not RKISP1_DIR_SRC
  media: staging: rkisp1: rename macros 'RKISP1_DIR_*' to
    'RKISP1_ISP_SD_*'
  media: staging: rkisp1: rename the field 'direction' in
    'rkisp1_isp_mbus_info' to 'isp_pads_flags'

 drivers/staging/media/rkisp1/rkisp1-common.h  |  6 ++-
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 50 +++++++++----------
 drivers/staging/media/rkisp1/rkisp1-resizer.c |  6 +--
 3 files changed, 31 insertions(+), 31 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
