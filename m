Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A4B1AC03F
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Apr 2020 13:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pi/LNh0otiBhrUI4xJbhYCLVSPjsBQuFCK5jXzBhcnE=; b=mIbKKB1piZP18F
	R2rIHVpbFtg2LEAR9YUt4lkUGgag2sGYCxNZz/WdXTcX2PSPoVcpDyHP+cJUXteVyhnYhLDIxzC9W
	wC1ESaTtD5HVqkB4HyrdiRk7g/MEIlLY8CD8P4cWE8Avqv5UCELM37ZSTEDQgAq3sd1lHWoIFasFV
	43YuH7hTPZEQPEzrOKI8Pozh09wTPMJ6DNepRT2MgXUoUNuHxpeWeNtwPuySjPkV4abmOxq8nECfE
	Z853jfUNCyOenCE8wrFOEN5J0RlabGegbZuNGRdnYXSOx00xu9Fa5KXMxFxJllTCYME3LM+si8OYY
	6QDW4MBR9FsepwSSlDqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP342-0004hc-ES; Thu, 16 Apr 2020 11:52:14 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP33s-0004af-Oi; Thu, 16 Apr 2020 11:52:06 +0000
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 4A2326000E;
 Thu, 16 Apr 2020 11:51:06 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] media: rockchip: rga: PX30 support and YUV2YUV fix
Date: Thu, 16 Apr 2020 13:50:43 +0200
Message-Id: <20200416115047.233720-1-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_045204_939052_2BC85B5C 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hansverk@cisco.com>, Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

This series adds support for the Rockchip PX30 SoC in the V4L2 M2M RGA driver.
It also contains a fix for the YUV2YUV case that was not properly handled.

Cheers,

Paul

Paul Kocialkowski (4):
  dt-bindings: rockchip-rga: Add PX30 compatible
  arm64: dts: rockchip: Add RGA support to the PX30
  media: rockchip: rga: Add support for the PX30 compatible
  media: rockchip: rga: Only set output CSC mode for RGB input

 .../devicetree/bindings/media/rockchip-rga.txt |  1 +
 arch/arm64/boot/dts/rockchip/px30.dtsi         | 11 +++++++++++
 drivers/media/platform/rockchip/rga/rga-hw.c   | 18 +++++++++++-------
 drivers/media/platform/rockchip/rga/rga.c      |  4 +++-
 4 files changed, 26 insertions(+), 8 deletions(-)

-- 
2.26.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
