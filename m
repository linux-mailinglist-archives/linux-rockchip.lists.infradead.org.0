Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3985314D17A
	for <lists+linux-rockchip@lfdr.de>; Wed, 29 Jan 2020 20:55:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cpnQwQnigl/cK+UqB0C4mDUvxFp3KB72nZpnv9m+hrk=; b=t/tu8v1ca44+3S
	ldMItNIxcnXMJJVrxpsuPtiT/eGFuX35PSErTy7cxcgppO41yoplCSqXnWKbch/4zsjdS4Y8djuFO
	bfiyaiZ1ngdEo+nNYr4by7acHaWYFCa1/i4TPB6Mt03AGAkkplaReCgnBdmvg1w8ZAvEAkLdRorXl
	Aew6HhQn64klUurxwJqKfGvAvD537HLwHawWfAHpn879/e3k36NAOSov6oCrUWPTQKscGlpNjkRP0
	ezmJakUYHmt9ZJLgFtYo5uHwfZ9mWh5xAAsrTBNjM1jO+rWDobdccn5yVCuXElFWESXIscS4K8Pjh
	YOPfH4d96VzTwNXvV1cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwtQo-0004JE-9j; Wed, 29 Jan 2020 19:55:22 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwtQk-0004Ic-Vs
 for linux-rockchip@lists.infradead.org; Wed, 29 Jan 2020 19:55:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 01137294ADD
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/6] media: rockchip: Add the rkvdec driver
Date: Wed, 29 Jan 2020 16:54:55 -0300
Message-Id: <20200129195501.8317-1-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_115519_154578_E99048EF 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Tomasz Figa <tfiga@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello,

This is v4 of Boris' rkvdec driver.

I've addressed the comments received during v3, all of them
quite minor. Please check each patch changelog for more details.

Thanks,
Ezequiel

Boris Brezillon (5):
  media: v4l2-core: Add helpers to build the H264 P/B0/B1 reflists
  media: hantro: h264: Use the generic H264 reflist builder
  media: dt-bindings: rockchip: Document RK3399 Video Decoder bindings
  media: rkvdec: Add the rkvdec driver
  arm64: dts: rockchip: rk3399: Define the rockchip Video Decoder node

Jonas Karlman (1):
  media: uapi: h264: Add DPB entry field reference flags

 .../bindings/media/rockchip,vdec.yaml         |   71 +
 .../media/uapi/v4l/ext-ctrls-codec.rst        |   16 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   14 +-
 drivers/media/v4l2-core/Kconfig               |    4 +
 drivers/media/v4l2-core/Makefile              |    1 +
 drivers/media/v4l2-core/v4l2-h264.c           |  258 ++++
 drivers/staging/media/Kconfig                 |    2 +
 drivers/staging/media/Makefile                |    1 +
 drivers/staging/media/hantro/Kconfig          |    1 +
 drivers/staging/media/hantro/hantro_h264.c    |  237 +---
 drivers/staging/media/rkvdec/Kconfig          |   15 +
 drivers/staging/media/rkvdec/Makefile         |    3 +
 drivers/staging/media/rkvdec/rkvdec-h264.c    | 1154 +++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec-regs.h    |  239 ++++
 drivers/staging/media/rkvdec/rkvdec.c         | 1134 ++++++++++++++++
 drivers/staging/media/rkvdec/rkvdec.h         |  124 ++
 include/media/h264-ctrls.h                    |    2 +
 include/media/v4l2-h264.h                     |   86 ++
 18 files changed, 3132 insertions(+), 230 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml
 create mode 100644 drivers/media/v4l2-core/v4l2-h264.c
 create mode 100644 drivers/staging/media/rkvdec/Kconfig
 create mode 100644 drivers/staging/media/rkvdec/Makefile
 create mode 100644 drivers/staging/media/rkvdec/rkvdec-h264.c
 create mode 100644 drivers/staging/media/rkvdec/rkvdec-regs.h
 create mode 100644 drivers/staging/media/rkvdec/rkvdec.c
 create mode 100644 drivers/staging/media/rkvdec/rkvdec.h
 create mode 100644 include/media/v4l2-h264.h

-- 
2.25.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
