Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8E41D5082
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 16:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jihKWe8L1SoMnj1RX598H8RCcsD1z7o9aHaJXI1ADAg=; b=iB0ZAP3ivj4Utf
	47ZsJCCW3ARdrcXplSoF86mqZ+27JCBtpbMQE+9/TyXOuJoUQXYDwOuQ/exgMafudK7djYJchcQPa
	O/qaX3FH89689XAf8fbOef2YGOQvJ5b8PItJQ9A0zoMElsVZKTyxPW4Dj7nrjVXzjeL2BATm3KRUv
	Aj/oJ7mfqd1Gy/aQgoKkLWeSQ5NSH1mdUEK1l1lsS41n2A6r8mNsBt/w/LI0nQFWhcKgD79OmH7/B
	QtjUUPMaiffDBOBWYUkZc/bPyEi8fuFyxfxOuGOqupPu/04UPHsH56TEHqSCOYLqoje02XvAtEGij
	JxR2NAFHhAgyMDD7B1Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbLn-0007qL-Lv; Fri, 15 May 2020 14:30:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbLg-0006L3-ED
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 14:30:06 +0000
Received: from localhost.localdomain
 (p200300cb871f5b0000f307f9e92f920a.dip0.t-ipconnect.de
 [IPv6:2003:cb:871f:5b00:f3:7f9:e92f:920a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E14252A2401;
 Fri, 15 May 2020 15:30:00 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 0/4] media: staging: rkisp1: various fixes to capture
 formats
Date: Fri, 15 May 2020 16:29:48 +0200
Message-Id: <20200515142952.20163-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_073004_621303_5FA31DE2 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This patchset fixes some issues in the supported capture formats
of rkisp1.

Patches Summary:

1. Replaces the format V4L2_PIX_FMT_RGB24 with format V4L2_PIX_FMT_XBGR32 which
is the format the device supports.

2. Uses the vdiv, hdiv of the yuv422 explicitly instead of defining macros.
This is a cleanup patch to make it clear where those values are taken from.

3. In case of YUV444 format, the memory input format should stay YUV422
and not be converted by the resizer. This patch fixes it

4. remove support of BGR666 format since it is not supported by the device.

The fixes to formats V4L2_PIX_FMT_XBGR32, V4L2_PIX_FMT_YUV444M
were tested.

Changes from v1:
In v1 I sent a single patch
"media: staging: rkisp1: cap: change RGB24 format to XBGR32"
This patchset reword the commit log of that patch and includes
the 3 other patches.


Dafna Hirschfeld (4):
  media: staging: rkisp1: cap: change RGB24 format to XBGR32
  media: staging: rkisp1: rsz: use hdiv, vdiv of yuv422 instead of
    macros
  media: staging: rkisp1: rsz: set output format to YUV422 if cap format
    is YUV444
  media: staging: rkisp1: cap: remove support of BGR666 format

 drivers/staging/media/rkisp1/rkisp1-capture.c |  6 +---
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 28 +++++++++----------
 2 files changed, 15 insertions(+), 19 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
