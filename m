Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73801E0F17
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 15:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5CpbCikFcCHoiXfFfVDJF3fFJKKQAuqRpktGmSm71wc=; b=MNYOz4lIaKcrcT0WBg/DKBfi43
	HmPUO2AZnb9OS9SnqrOgRYHEaJP4Ojy3/poPYj93eebXglg+p3u5nJwpYpF2tzyGqh7T+DXSAoQgf
	VhyIm7k32xxLns5pNr99AiFg8Y8YyGBVFmeUxIopSXlLHEH20oz7qMv6j/f8TBWvBZdoZnB9oQDxY
	l6pkWF7JE4SJOo2yie69TrKOqFFPbp5Cu8lB3cTHw2ACKZyxrmA1knE2QQVJ4XqS9LSyGXZWD6uAk
	h2twzG9+G8so3FEQ/al7WFHTn0hJhfo3rSLJEJCva3I005Jpq18rmKfiqWu3uWWMZwMt9vrRF+tog
	CBVis+ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCqq-00035s-EW; Mon, 25 May 2020 13:09:08 +0000
Received: from mail.loongson.cn ([114.242.206.163] helo=loongson.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCql-000342-7e
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 13:09:06 +0000
Received: from linux.localdomain (unknown [113.200.148.30])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dxb2pqw8tegOs4AA--.606S3;
 Mon, 25 May 2020 21:09:00 +0800 (CST)
From: Tiezhu Yang <yangtiezhu@loongson.cn>
To: Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 2/2] phy: Remove CONFIG_ARCH_* check for related subdir in
 Makefile
Date: Mon, 25 May 2020 21:08:58 +0800
Message-Id: <1590412138-13903-2-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1590412138-13903-1-git-send-email-yangtiezhu@loongson.cn>
References: <1590412138-13903-1-git-send-email-yangtiezhu@loongson.cn>
X-CM-TRANSID: AQAAf9Dxb2pqw8tegOs4AA--.606S3
X-Coremail-Antispam: 1UD129KBjvJXoW7Kr1DtF13XFWDKryUCrWfZrb_yoW8Ar47pr
 s3trWUGrykGryUWFZFk390kF98tan7trWqgryfJ3W5JFn8CFWYqrnIgFy7JF1xXr4xJFW7
 G3Z3Ga43CF1Yk37anT9S1TB71UUUUUDqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUU9l14x267AKxVW5JVWrJwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2048vs2IY020E87I2jVAFwI0_Jr4l82xGYIkIc2
 x26xkF7I0E14v26r1I6r4UM28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8wA2z4x0
 Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1l84
 ACjcxK6I8E87Iv67AKxVWxJr0_GcWl84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s0DM2AI
 xVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20x
 vE14v26r1Y6r17McIj6I8E87Iv67AKxVWxJVW8Jr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0
 Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCF04k20xvY0x0EwIxGrwCFx2
 IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v2
 6r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67
 AKxVWUCVW8JwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IY
 s7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r4j6F4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr
 1j6F4UJbIYCTnIWIevJa73UjIFyTuYvjfUoGQDUUUUU
X-CM-SenderInfo: p1dqw3xlh2x3gn0dqz5rrqw2lrqou0/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_060903_738662_75417310 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-rockchip@lists.infradead.org, Tiezhu Yang <yangtiezhu@loongson.cn>,
 Xuefeng Li <lixuefeng@loongson.cn>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

If CONFIG_ARCH_ROCKCHIP is not set but COMPILE_TEST is set, the file in
the subdir rockchip can not be built due to CONFIG_ARCH_ROCKCHIP check
in drivers/phy/Makefile.

Since the related configs in drivers/phy/rockchip/Kconfig depend on
ARCH_ROCKCHIP, so remove CONFIG_ARCH_ROCKCHIP check for subdir rockchip
in drivers/phy/Makefile.

The other CONFIG_ARCH_* about allwinner, amlogic, mediatek, renesas and
tegra have the same situation, so remove them too.

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
---

v2:
  - Remove all the CONFIG_ARCH_* check for related subdir in Makefile
  - Modify the patch subject and update commit message

 drivers/phy/Makefile | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index 310c149..16e2622 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -8,24 +8,24 @@ obj-$(CONFIG_GENERIC_PHY_MIPI_DPHY)	+= phy-core-mipi-dphy.o
 obj-$(CONFIG_PHY_LPC18XX_USB_OTG)	+= phy-lpc18xx-usb-otg.o
 obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
 obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
-obj-$(CONFIG_ARCH_SUNXI)		+= allwinner/
-obj-$(CONFIG_ARCH_MESON)		+= amlogic/
-obj-$(CONFIG_ARCH_MEDIATEK)		+= mediatek/
-obj-$(CONFIG_ARCH_RENESAS)		+= renesas/
-obj-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip/
-obj-$(CONFIG_ARCH_TEGRA)		+= tegra/
-obj-y					+= broadcom/	\
+obj-y					+= allwinner/	\
+					   amlogic/	\
+					   broadcom/	\
 					   cadence/	\
 					   freescale/	\
 					   hisilicon/	\
 					   intel/	\
 					   lantiq/	\
 					   marvell/	\
+					   mediatek/	\
 					   motorola/	\
 					   mscc/	\
 					   qualcomm/	\
 					   ralink/	\
+					   renesas/	\
+					   rockchip/	\
 					   samsung/	\
 					   socionext/	\
 					   st/		\
+					   tegra/	\
 					   ti/
-- 
2.1.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
