Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C02919D3A1
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 Apr 2020 11:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0ZP/yrfnyezbkAxq+5laBd3cG4DagM5hFIcwaeeLZ6U=; b=XYfXSaZXP1RXLU
	ccO/H/1L1s50TgClrfdEGdK1EF+FpMYu/BVMVmOIeOosXTgS4zsk00+P6fG4ZRvNazg6KukGISymL
	YZJeFjGLKN9JbiB1pvigi5MoS1TK5rFAcOpdymoFkgEpZeYD6W+vKBewz7CmXG3A+kdvTR36N3S9h
	rXCMUu0DgCq69edDUU/tVRKGy+ja02huoEUgYvypRfBLlL6HGQkdPNvgdTq57rUlPgus51srbsa4u
	Z+cXhIMa+zrW9hSlW5reWNo4dC+TGHznP41TZxHan6rHHgf8fErunlxWcqPfK5pOZEedUn5YK1N7n
	qJva4BswPOB3NLYLfTfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIcC-00072c-FV; Fri, 03 Apr 2020 09:27:52 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKIc8-00071V-Hx
 for linux-rockchip@lists.infradead.org; Fri, 03 Apr 2020 09:27:49 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a02:810a:1140:6758:20a2:167a:3b62:26be])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 92CEE2984F9;
 Fri,  3 Apr 2020 10:27:46 +0100 (BST)
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl,
 kernel@collabora.com, dafna3@gmail.com, laurent.pinchart@ideasonboard.com,
 linux-rockchip@lists.infradead.org, sakari.ailus@linux.intel.com
Subject: [PATCH v2 0/2] use enum v4l2_pixel_encoding instead of
 rkisp1_fmt_pix_type
Date: Fri,  3 Apr 2020 11:27:36 +0200
Message-Id: <20200403092738.29831-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_022748_726535_C61E2A19 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

The enum v4l2_pixel_encoding can be used instead of rkisp1_fmt_pix_type.
This allows cleanup of the enum rkisp1_fmt_pix_type. Also, since the
v4l2_pixel_encoding can be retrieved from the info->pixel_enc of the
capture formats, the field fmt_type can be dropped from the struct
rkisp1_capture_fmt_cfg.

Patch 1: replace rkisp1_fmt_pix_type with v4l2_pixel_encoding
Patch 2: drop the field fmt_type from the struct rkisp1_capture_fmt_cfg

Changes from v1:
v1 was a single patch that only drops the fmt_type from the struct
rkisp1_capture_fmt_cfg and adds a function rkisp1_pixel_enc_to_fmt_pix
which is in v2 not needed.

Dafna Hirschfeld (2):
  media: staging: rkisp1: replace rkisp1_fmt_pix_type with
    v4l2_pixel_encoding
  media: staging: rkisp1: cap: remove field fmt_type from struct
    rkisp1_capture_fmt_cfg

 drivers/staging/media/rkisp1/rkisp1-capture.c | 51 +------------------
 drivers/staging/media/rkisp1/rkisp1-common.h  | 11 +---
 drivers/staging/media/rkisp1/rkisp1-isp.c     | 42 +++++++--------
 drivers/staging/media/rkisp1/rkisp1-resizer.c |  8 +--
 4 files changed, 29 insertions(+), 83 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
