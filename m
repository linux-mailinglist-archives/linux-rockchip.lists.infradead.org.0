Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783F616A11
	for <lists+linux-rockchip@lfdr.de>; Tue,  7 May 2019 20:22:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3nEG4yvk3UWa38WDlF2TVx4/Y4jigdSBTo4XukDOsI4=; b=GqNEHMX/CV3DXJ
	0M+J6MY/kgdpcBzrkSVXWv3EKRJv2YxLB68YJMv9mCge6C6JRY1rNP//JafaQV1DKZg0wz1D/8ZOf
	cWXdvK5SsXYndl+CIKYycLouRGtjc8PNzvUIeODt9WzgQByRRCLD7Wx4ReP3pDs+Ymhl/oF0msD2i
	oQRPCgICjqv2SafXjDqJGVu055jshfBVtUM7GEcoAOsFYvYI2ZrvIkS67t71lx3JN53hQbbOZTlod
	jAO4UrtCZh/a9fL8FR4Z62rZO60n9GRT6P6TV6EZc9rN6NVzc+xRwrkPR6yjSgwangUPprqDck+PS
	J3WmcK2anKG3YTLRfFkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4jS-000377-JP; Tue, 07 May 2019 18:22:26 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4jP-00035S-EA
 for linux-rockchip@lists.infradead.org; Tue, 07 May 2019 18:22:24 +0000
Received: by mail-pl1-x643.google.com with SMTP id y3so8596361plp.0
 for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2019 11:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xl42gez31+v93o6g0rhaZH7Knkp5dAag+f3Jzth0yO8=;
 b=cs1JhiQpr02iT2Ai/yf1Kli0yxl51QKufYFfr9v6LJP46wxrgTnwMXug2KlcB0spdh
 IQrYsyriKUDLOo0uahCbsMxUkEhKH+6redq+MKk9bhgTdfTgFLDcAOmBYm3BkDUUH1dJ
 SV+zUs/PaQvetJ1+gf8YdV/vtDAGyvmcVdLkM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xl42gez31+v93o6g0rhaZH7Knkp5dAag+f3Jzth0yO8=;
 b=S4+nXOlrhiPPRUPJ9p94rHf4lcGtG7nnd/sI5mfXiEOnesdBWeOoNg3cLy75GLNwzM
 dr2NRhOK7x5NdHlal0yBLH1qSDjwliQ8ql5UXOhqNMdrB6ftqwT+O5GZtn0HYdfsWzvT
 B0xEPMTS1cVMh/q+AuKkmy5L2A6el+22v8GZrqqjGJ/09uxBfXNcwoqttuzXDCc+u33r
 sJPmORJKhshCEuc4Wrywlbrn1YCuoyJc3Sc9WZsygRFz8LHUG+UZyWwJCB9UfuCrDJab
 N/7QnBB6WC4gbTvwPweEx4TkzS+mGm+9gGC9mXHgEzp94teEd01CpBvDtTdW7p/1Zf3t
 IlaA==
X-Gm-Message-State: APjAAAUdvLX+sHUEuQaOv2Ml6w+spHw8BfgHWS7oq1++//q4bo3UI7hq
 0xJKc5DpPslkwpyI25HaErQbTg==
X-Google-Smtp-Source: APXvYqwOr9tFDRcH23ayGBs4Jm7j8AlVqFpMrnSww9HbQ+bBys1J7Iu2NPqBZ6JzE1tAMdoCZujiRw==
X-Received: by 2002:a17:902:d88b:: with SMTP id
 b11mr21313314plz.186.1557253342798; 
 Tue, 07 May 2019 11:22:22 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id d15sm18491568pfr.179.2019.05.07.11.22.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:22:22 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH v7 3/4] rockchip: dts: rk3399-u-boot: Add u-boot,
 dm-pre-reloc for spi1
Date: Tue,  7 May 2019 23:51:51 +0530
Message-Id: <20190507182152.4254-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507182152.4254-1-jagan@amarulasolutions.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_112223_470169_A6006F06 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add u-boot,dm-pre-reloc property for spi1, so-that the
subsequent rk3399 boards which boot from SPI.

This help to separate the u-boot specific properties away
from base dts files so-that the Linux sync become easy and
meaningful.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-u-boot.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
index f533ed95eb..0786c1193a 100644
--- a/arch/arm/dts/rk3399-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-u-boot.dtsi
@@ -6,3 +6,7 @@
 &sdmmc {
 	u-boot,dm-pre-reloc;
 };
+
+&spi1 {
+	u-boot,dm-pre-reloc;
+};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
