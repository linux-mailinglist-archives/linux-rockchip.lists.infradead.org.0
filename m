Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B9D19FD91
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Apr 2020 20:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bp5dUwF/24pzulriITPCYGZt9cYeuwfvBeJVQ02o2XQ=; b=fJpuY9C5AWAoe4
	PqYL6C6+Z6EuRoTiLKW5QRkENZnupYb4abkzbiv7ZY/4xkNH5kqHrx9bkv+uzl3mMxB23JbmGUH1I
	C+Lif4HFfMlXbOuRt3PbC1LtAAT5QE0O76JH8kZWxao6CVE3cJHgYCzRp6MeV4sn8TJXey7i9/HmT
	LIbMLFxyipv96jkMFaf7naIvR0JsCzjIm64cSnFcJICJvavN9C2CNcLQn7EWGtYLFpZzhEgunHw7m
	8mU5kBhyeFYLVzgybCeV4dQ/dbkujNHvae3G8wQmaGAoSK57P94Tsc2AjCRq1e9xjLX8lsY0EfBJ3
	VGF9Cb+kjwhwJUBUAKww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLWrV-00046f-49; Mon, 06 Apr 2020 18:52:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLWrR-000458-8U
 for linux-rockchip@lists.infradead.org; Mon, 06 Apr 2020 18:52:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 4B17A296AE6
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 0/3] rkisp1: use enum v4l2_pixel_encoding instead of
 rkisp1_fmt_pix_type
Date: Mon,  6 Apr 2020 20:52:32 +0200
Message-Id: <20200406185235.21238-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_115241_433376_4274FCD4 
X-CRM114-Status: UNSURE (   6.00  )
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
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The enum v4l2_pixel_encoding can be used instead of rkisp1_fmt_pix_type.
This allows cleanup of the enum rkisp1_fmt_pix_type. Also, since the
v4l2_pixel_encoding can be retrieved from the info->pixel_enc of the
capture formats, the field fmt_type can be dropped from the struct
rkisp1_capture_fmt_cfg.

Patch 1: replace rkisp1_fmt_pix_type with v4l2_pixel_encoding
Patch 2: drop the field fmt_type from the struct rkisp1_capture_fmt_cfg
Patch 2: rename the fields fmt_type to the more informative name pixel_enc

Changes from v1:
v1 was a single patch that only drops the fmt_type from the struct
rkisp1_capture_fmt_cfg and adds a function rkisp1_pixel_enc_to_fmt_pix
which is in v2 not needed.

Changes from v2:
Add patch 3 that rename the fields fmt_type to pixel_enc

Dafna Hirschfeld (3):
  media: staging: rkisp1: replace rkisp1_fmt_pix_type with
    v4l2_pixel_encoding
  media: staging: rkisp1: cap: remove field fmt_type from struct
    rkisp1_capture_fmt_cfg
  media: staging: rkisp1: change fields names from fmt_type to pixel_enc

 drivers/staging/media/rkisp1/rkisp1-capture.c | 51 +------------------
 drivers/staging/media/rkisp1/rkisp1-common.h  | 11 +---
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 42 +++++++--------
 drivers/staging/media/rkisp1/rkisp1-resizer.c | 12 ++---
 4 files changed, 31 insertions(+), 85 deletions(-)

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
