Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B1318B8B4
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Mar 2020 15:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L7nH0Zi3tHzK0roHcPMUDiEMHo11+zbW4thMxD46BnQ=; b=dzUCsZqSmtK+4F
	5VglnzGkTeNge9yxTjAaRZ0BMNz3I+l4GD739nVbnntgraD/+pWncc91MlEKQz74R0Bw8sDWZkxvh
	ZqHIztPel9sTcpczJdTDYnUp8j+scR7XSC15gzhfZ0s1uePujYtojMLfgGXEiDh5XEAUzylscR/MC
	hpQhSKGmiukliyCaUfiR84mot0B7VwPIOR3uhCVVCGhPsJIUBMji7qYO1K7Fbea1G6FqH7aWBFCkB
	br8N2IMFrLgbA/XPE4TktAHQoFJk1JO08kH80dc+SozXpQxAyuoGt1eDHVK6v5r/UxhF+k4GymwgF
	EhGcn11ZPdsQeXprIm4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEvrg-00087E-JN; Thu, 19 Mar 2020 14:09:40 +0000
Received: from vegas.theobroma-systems.com ([144.76.126.164]
 helo=mail.theobroma-systems.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEvrT-0007ub-5K; Thu, 19 Mar 2020 14:09:28 +0000
Received: from ip092042140082.rev.nessus.at ([92.42.140.82]:40148
 helo=purcell.lan) by mail.theobroma-systems.com with esmtpsa
 (TLS1.2:DHE_RSA_AES_256_CBC_SHA1:256) (Exim 4.80)
 (envelope-from <christoph.muellner@theobroma-systems.com>)
 id 1jEvrM-0004AC-Nt; Thu, 19 Mar 2020 15:09:20 +0100
From: Christoph Muellner <christoph.muellner@theobroma-systems.com>
To: 
Subject: [PATCH] phy: rk-inno-usb2: Decrease verbosity of repeating log.
Date: Thu, 19 Mar 2020 15:08:52 +0100
Message-Id: <20200319140852.27636-1-christoph.muellner@theobroma-systems.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_070927_347947_47E5178D 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, heiko.stuebner@theobroma-systems.com,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Christoph Muellner <christoph.muellner@theobroma-systems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

phy-rockchip-inno-usb2 logs the message

  "phy-ff2c0000.syscon:usb2-phy@100.2: charger = INVALID_CHARGER"

constantly with a frequency of about 1 Hz and a verbosity level
of INFO. As this is clearly annoying, this patch decreases
the log level to DEBUG.

Signed-off-by: Christoph Muellner <christoph.muellner@theobroma-systems.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 680cc0c8825c..a84e9f027fc4 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -763,7 +763,7 @@ static void rockchip_chg_detect_work(struct work_struct *work)
 		/* put the controller in normal mode */
 		property_enable(base, &rphy->phy_cfg->chg_det.opmode, true);
 		rockchip_usb2phy_otg_sm_work(&rport->otg_sm_work.work);
-		dev_info(&rport->phy->dev, "charger = %s\n",
+		dev_dbg(&rport->phy->dev, "charger = %s\n",
 			 chg_to_string(rphy->chg_type));
 		return;
 	default:
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
