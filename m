Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1131504CD
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Feb 2020 12:00:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QBxnnHhMQ014Ls+ggK4hAqxRG5C5pMmnrKwvw2yCTAA=; b=XW81yP/Hzq4unH
	oH0dXYh67XmOevV345E+q49o/2bEvnGwi5pbo8fZphfLhjF7QYoHPxMSQihKm4baWlc3RbTz1wmdq
	49JZK+yo645ngoYH8rhnd4vSW09U+8JiTYo5UP/EtdhYnHHLt0LUJlilMxmyEiihQOZIB6Fs4nyhC
	rxMfXm7v+dpInpTTuhplLK70QJOkpOW6y1rFVf1HQdgNG8+TBFhqgifarjpK09/xgZ7OjBbbfgP+u
	MZIhVKb4c7GE4vj+hHEQxqtSam5IVgmqCTSUw7pB3/LfaFHq6JISBK75MefJcFX3SrklRIcQPHYa6
	p9BA2DBWEF5jLw1RYsrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZTE-0001BQ-MT; Mon, 03 Feb 2020 11:00:48 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZTB-0001AE-84
 for linux-rockchip@lists.infradead.org; Mon, 03 Feb 2020 11:00:46 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iyZT4-0007AG-5Y; Mon, 03 Feb 2020 12:00:38 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from roc (p5098d998.dip0.t-ipconnect.de [80.152.217.152])
 (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 013B0bp5009295
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 3 Feb 2020 12:00:37 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
To: linux-rockchip@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>
Subject: [PATCH] regulator: mp8859: add supply entry
Date: Mon,  3 Feb 2020 12:00:33 +0100
Message-Id: <20200203110034.1448-1-m.reichl@fivetechno.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de; m.reichll@fivetechno.de; 1580727645;
 1bfe58be; 
X-HE-SMSGID: 1iyZT4-0007AG-5Y
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_030045_423230_DDC21A42 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Markus Reichl <m.reichl@fivetechno.de>, heiko@sntech.de,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add vin_supply to the regulator description to support a nice
regulator tree.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 drivers/regulator/mp8859.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/regulator/mp8859.c b/drivers/regulator/mp8859.c
index 1d26b506ee5b..6ed987648188 100644
--- a/drivers/regulator/mp8859.c
+++ b/drivers/regulator/mp8859.c
@@ -95,6 +95,7 @@ static const struct regulator_desc mp8859_regulators[] = {
 		.id = 0,
 		.type = REGULATOR_VOLTAGE,
 		.name = "mp8859_dcdc",
+		.supply_name = "vin",
 		.of_match = of_match_ptr("mp8859_dcdc"),
 		.n_voltages = VOL_MAX_IDX + 1,
 		.linear_ranges = mp8859_dcdc_ranges,
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
