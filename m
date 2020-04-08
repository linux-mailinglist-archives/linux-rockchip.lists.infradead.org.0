Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3591A2022
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Apr 2020 13:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YRBmvw6zXQ0GP80OVHa5F2hX8TeUrgaDtCsoWk7dmPY=; b=BWEPFVQW+Mfqk7
	MJwAxGfIIJ5D8J9USNA97dHqFHj1L+JKq02SoXLS26veLWWORtZEMqSkz4iHxCW2N3Q3wBQUhuBLK
	0oNAsvw8AxBb3y28cJ9CrWrsQ/7KE0LU61BFOf4iiwrf4u7WG0gkkItBdv7RtNau8TxBlF7LFjNED
	dQ4MMu+uqCPH85ejbrrpAoKk5cvWd+Rtb1PTh8whZbSMzOjE4fKoyQfj0Fi+54J3jRBDH5vRbfY9K
	jvOdCxh7PO79aqj/W0EaIZlpBij3ZeJ4ZDrstkX/T6qrzjWF8UCX4CPN7nNu5VNsp0apy4wrbFbl5
	DjDWlJ7ivcr99HCjqPxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9CF-0003vS-PB; Wed, 08 Apr 2020 11:48:43 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9CA-0003sl-Pw
 for linux-rockchip@lists.infradead.org; Wed, 08 Apr 2020 11:48:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 1851729681D
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v3 0/6] media: staging: rkisp1: cap: various fixes for capture
 formats
Date: Wed,  8 Apr 2020 13:48:16 +0200
Message-Id: <20200408114822.27360-1-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_044838_977700_0D552359 
X-CRM114-Status: GOOD (  10.36  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This patchset fixes various issues related to
the supported formats in the rkisp1 capture.

This patchset is rebased on top of v3 of the patchset:
"rkisp1: use enum v4l2_pixel_encoding instead of rkisp1_fmt_pix_type"

Patches summary:

patches 1,2 - fixes a wrong assignments to the register that swaps the
'u', 'v' planes in YUV semiplanar formats.

patch 3 - writes to the uv swap with "off" if swapping is not needed.

patch 4 - sets the uv swap register only if the format is semiplanar.

patch 5 - adds support to planar YUV formats with swapped u,v planes
by swapping the addresses of the planes

patch 6 - removes some packed YUV formats that are not supported
by the driver.

changes from v1:
- split the first patch from v1 into two separate patches, the first is a cleanup patch
the second fixes a bug.

changes from v2:
- rebasing the patchset on top of v3 of
"rkisp1: use enum v4l2_pixel_encoding instead of rkisp1_fmt_pix_type"
- patches 1,2: replace "reg = reg | .." with "reg |= .."
- adding patch 3 to change the logic of wrrting to uv swap reg
- patches 4,5: checking if format is (semi)planar using the info pointer and not using the write_format value
- patch 4: using the "swap" define to swap the cb, cr addresses





Dafna Hirschfeld (6):
  media: staging: rkisp1: cap: cleanup in mainpath config for uv swap
    format
  media: staging: rkisp1: cap: fix value written to uv swap register in
    selfpath
  media: staging: rkisp1: cap: change the logic for writing to uv swap
    register
  media: staging: rkisp1: cap: support uv swap only for semiplanar
    formats
  media: staging: rkisp1: cap: support uv swapped plane formats
  media: staging: rkisp1: cap: remove unsupported formats

 drivers/staging/media/rkisp1/rkisp1-capture.c | 50 +++++++++----------
 1 file changed, 24 insertions(+), 26 deletions(-)

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
