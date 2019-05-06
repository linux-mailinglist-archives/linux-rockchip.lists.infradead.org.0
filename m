Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A8514948
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 May 2019 14:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=V9KaUPImNfjbi4eIfhzXQu+0h/AhwC9FkcHGbPpXXco=; b=Kwu
	g7NLC5QysWwQTf+O1SZkQCygCV/3wB9AWT/eDnD0nzUO2TE6PYNiYTc2YtzH5o2lhH2YAff3tY7/m
	WlS6Srax+gjKrcHQLYMgsKjpZwY3az/x9iXME/+YcGb279S1FKCNeVwC0hvSi5clwW/G106JRAjxq
	Gz1X2srsltEh3xuK86DDI70aWv5+q1nNjzcC+OxulDR90Z0zmm2l1KNgQt4hO+bnJnSMxOEYHpMyK
	N495qUrBBYxQKStsLzT3lwA2paSxQJBPG87gCD/JfQPxbkLy325qMJUuJHJ4vZbbeN3WfDDY/AyKQ
	2vwv7730pg9tw446DTbc0kjf1e1jIbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNcN8-0004TX-Ct; Mon, 06 May 2019 12:05:30 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcN4-0004St-DV
 for linux-rockchip@lists.infradead.org; Mon, 06 May 2019 12:05:27 +0000
Received: by mail-pg1-x542.google.com with SMTP id t187so2239477pgb.13
 for <linux-rockchip@lists.infradead.org>; Mon, 06 May 2019 05:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=HNEnwk6bTyI+OdxTHxmPibg++VUvhYqw1S30xXcVZwM=;
 b=f/5+htOyvjkdDYEDCOaeUK7pb2MKXpEDjDcB9ympoEJwxl8lLpuo+/Do9n529BCo7G
 fy3eB+/l9rwfBf35NTTLyd4TCsrhybdKdrUmOODARQue/Kl8V9U1fbSn2sLxnTzw7s3e
 rxvR+cKHuYXhsWa76q/R17RMzgAGDDZba8esw+/oste9ySRMomylMMQfpYM+Kb7ZMBWH
 HWPlkCsTmWxd7DTrh9JACEnS1o0WoP/ds6ehK3ObZBcW0Rd1oi++HcOT5Z10RlWrxV0b
 t/Y/JBqtVTOHxVRFjsKFuthtsgL1WcoBvbOg6muXU6Ikd7MmXAftmvnsbp5YbwZnBIcV
 KXlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HNEnwk6bTyI+OdxTHxmPibg++VUvhYqw1S30xXcVZwM=;
 b=KdskSrrLdj+8iZ0K4VEdA0ydGH06AGhRndj58V+Tf9X6e/8bqJkoE4omrpS21HPztA
 KrA8xmiqyQuuc5HjjTEu9T5BDSEyTW09K+NxWTmFnxJ7vqfd6c1ylF3BlGuWCWctmLKO
 TVoMbrVMAE2SH+S/CUIWadPFOWOnBKuoJQCGZIsGxqTZQmgX0rfKnAvmNgs9hfy2Mted
 IVu0JhPpMSXV5ISmgdQcRLQPVUcd5yNFraY433jZBCIUeQPv0ZtfZ/DuIaSt6gl+vdbq
 GjQkOzn2dTG+pXtrzwVBaGOSN2lvRPeT6/MHgiBinrNGXcsIKx5G97nfWOtkFpOfz6MT
 lNKA==
X-Gm-Message-State: APjAAAWVjvE28qJV6L0ejGQLV+hzwlWXoI5RhsYzp93MK64US9IFL9+2
 30kmEdMLPFUZk4O73I0Hu8N9
X-Google-Smtp-Source: APXvYqwFs/Zc/eWEWDAECt5UzKf54ZygzFhrTr+07TNz+PDBlMsTsn8Aof9hCZQDwHTJxr0qMFJQeQ==
X-Received: by 2002:a63:9dc8:: with SMTP id i191mr30660274pgd.91.1557144325309; 
 Mon, 06 May 2019 05:05:25 -0700 (PDT)
Received: from localhost.localdomain
 ([2409:4072:611b:55a4:e119:3b84:2d86:5b07])
 by smtp.gmail.com with ESMTPSA id q17sm26482318pfi.185.2019.05.06.05.05.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 05:05:24 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: heiko@sntech.de
Subject: [PATCH 1/2] arm64: dts: rockchip: Enable SPI0 and SPI4 on Rock960
Date: Mon,  6 May 2019 17:34:57 +0530
Message-Id: <20190506120458.25842-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_050526_498520_B908FDC9 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: tom@vamrs.com, linux-kernel@vger.kernel.org, dev@vamrs.com,
 linux-rockchip@lists.infradead.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable SPI0 and SPI4 exposed on the Low and High speed expansion
connectors of Rock960.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index 12285c51cceb..7498344d4a73 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -114,6 +114,18 @@
 	};
 };
 
+&spi0 {
+	/* On Low speed expansion */
+	label = "LS-SPI0";
+	status = "okay";
+};
+
+&spi4 {
+	/* On High speed expansion */
+	label = "HS-SPI1";
+	status = "okay";
+};
+
 &usbdrd_dwc3_0 {
 	dr_mode = "otg";
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
