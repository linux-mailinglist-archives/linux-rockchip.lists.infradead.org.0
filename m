Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 063321E05C2
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 06:09:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VAyB3pnTQf9oshdaoTLTmxV5UNfL5KyOmq+62mvnqUM=; b=Ovy+cPKomM9LY7vicZ1Sey/9jc
	H+ADEOK05how0KRv2uBsr3Tw5GPWaGG4pZzMwN20XYV0o4OkRV7K72GvKHPoric3+aSw08HBa6vi+
	fHWCGVF/VJilCDe4Dd0CZIzpHGeeF0aRlWADraFTq8OV+xQtV4bhfEQymIU1pSh6/4MA9wAStNdme
	fWqntb/lKBPGib0YeeKeBG66Vhro6wrwU5O/FcGY+SMj3IIlniYu0IokwPLHJDeAvDmzx1+e/fRQ4
	YPBRUtkrbELdqYY3yxruXNnqDGDUfvHcDBWOKRSFbww0IRx9MGMo37ZzbPxO2UZdQPYnXUVSlKHuy
	ds0VajNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd4Qa-0005fO-Eq; Mon, 25 May 2020 04:09:28 +0000
Received: from mail.loongson.cn ([114.242.206.163] helo=loongson.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd4QW-0005eT-Mz
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 04:09:26 +0000
Received: from linux.localdomain (unknown [113.200.148.30])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dxv2vbRMteVcU4AA--.1168S3;
 Mon, 25 May 2020 12:09:01 +0800 (CST)
From: Tiezhu Yang <yangtiezhu@loongson.cn>
To: Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>
Subject: [PATCH 2/2] phy: Remove CONFIG_ARCH_ROCKCHIP check for subdir rockchip
Date: Mon, 25 May 2020 12:08:59 +0800
Message-Id: <1590379739-18729-2-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1590379739-18729-1-git-send-email-yangtiezhu@loongson.cn>
References: <1590379739-18729-1-git-send-email-yangtiezhu@loongson.cn>
X-CM-TRANSID: AQAAf9Dxv2vbRMteVcU4AA--.1168S3
X-Coremail-Antispam: 1UD129KBjvdXoWruw18tr4UJF4xArWxAF1UZFb_yoWDGrX_K3
 yDWr1xWw4rCr97uFnI93s3u34DKan8Wwn5ZF40yr9rXa48ur9Yyas5Zr1UJFs8Gr17uF40
 yay0qF9rAryIqjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbhxFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
 6rWj6s0DM7CIcVAFz4kK6r1j6r18M28IrcIa0xkI8VA2jI8067AKxVWUGwA2048vs2IY02
 0Ec7CjxVAFwI0_JFI_Gr1l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xv
 wVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVWxJVW8Jr1l84
 ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AKxVWxJr0_GcWl
 e2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI
 8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJVW8JwAC
 jcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc2xSY4AK67AK6r45MxAIw2
 8IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4l
 x2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWUtwCIc40Y0x0EwIxGrw
 CI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI
 42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z2
 80aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUjeWlPUUUUU==
X-CM-SenderInfo: p1dqw3xlh2x3gn0dqz5rrqw2lrqou0/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_210925_170152_8E922F24 
X-CRM114-Status: UNSURE (   9.73  )
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

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
---
 drivers/phy/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index 310c149..e5b4f58 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -12,7 +12,7 @@ obj-$(CONFIG_ARCH_SUNXI)		+= allwinner/
 obj-$(CONFIG_ARCH_MESON)		+= amlogic/
 obj-$(CONFIG_ARCH_MEDIATEK)		+= mediatek/
 obj-$(CONFIG_ARCH_RENESAS)		+= renesas/
-obj-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip/
+obj-y					+= rockchip/
 obj-$(CONFIG_ARCH_TEGRA)		+= tegra/
 obj-y					+= broadcom/	\
 					   cadence/	\
-- 
2.1.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
