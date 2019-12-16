Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98952121212
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 18:48:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asZjb2BlVkYJSOGKG8JThBAd2GAvW+hhwXsqBbG8t2k=; b=tDAtemULqsYkw1
	XOPYhfZLPaYmOZelFEbaqOuyHul+aZUkH/g9qc/6fIIKN+eXaGTIPX4F+Zg8GXDKH8ShqdtiuRAnB
	hahjFZojUIwXIogqzegfPo/xi3jT4q7+GMwsqlHegrXcRzblMOOGbZTxl8U6SFlEH7i6HzSLsyACX
	tRaJobCqztu+jJBChiezhDisMdHYO4D47wguLOsWL5Dszssu1uhTsvRLGoHPZ62f6TY+Gjj/M9gMa
	LKHAmBBtpBva+jc8XIr7UuoDb6wdB/SdB73K+wYcmg1qhr4v/Xam/MwgldAKLK4cJoTxQW2/QTTDX
	FOsxhbFoxmLjlwN3wR6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iguTT-0003ul-B4; Mon, 16 Dec 2019 17:48:03 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iguTC-0003iR-BV
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 17:47:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id r11so4127438pgf.1
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 09:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hw5Av0omrpqDMS7vMjj661LVLxdnMyCAfz7uWvwVCL8=;
 b=UzAut7oPZ6MwulRVGd8z4CDfcsQG18oSMOJeImKi0I4vNbCimNPWgWxR6T1cuHUrkn
 QuhGtJyUnUuhh8/vFQAoC0pckg8wppSCIzyHSEO3UDa6otYVEjP5f+FFluCbxdOuQ3/r
 QgQj8JMj+hVg+QKXCgElrEGcaf2ifPzofkon8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hw5Av0omrpqDMS7vMjj661LVLxdnMyCAfz7uWvwVCL8=;
 b=p1SxGtfTJrOHDgiHhSX9DAahz95AURaw/NgjTT7D0SPsXzfhsH16IzwF60FlAlT9gF
 YKQUJbSungVC8i/nhxueOJoYNZFY/tYvlDDdAIUta4p+ERq2SeJPrNUCN0t6BgfsjAaR
 hvp3qmnEbD99bTBGZSoAgMs65yHsEiUDTXCL3ow56Yx5WgUjJlUix5kgZ9ESntt5bw3d
 sshHXSwQxRMVQy/BFoyeRY8g24e7e6XN21ffSwM3TZSCe56Tu3SbVNHaZuMRsaJIw3DE
 r5lCyyAfQGXokjk7O+ylHfdCKLbA1uEy+/1oRH5CgD/H7FBWOteWh9yZjivb4Pmu5D/x
 ETIw==
X-Gm-Message-State: APjAAAVbUYImGsXyBy7nkaVPx6NYzj4Nrna04ouwMEhtRjxepk59f1bk
 TgN7mG3ajXI5LZWvxXfvNGHZ+w==
X-Google-Smtp-Source: APXvYqyXoQALeAM+zoIV40agZm7icWv+ejSDOE9brdNu2AiqwbmAeH5gOOEc/CZzDWaZYkhS1xv4Kg==
X-Received: by 2002:a63:5f91:: with SMTP id
 t139mr19298242pgb.185.1576518465339; 
 Mon, 16 Dec 2019 09:47:45 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6d28:a89:f9e1:1506])
 by smtp.gmail.com with ESMTPSA id
 a6sm22342924pgg.25.2019.12.16.09.47.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 09:47:44 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 1/4] dt-bindings: arm: rockchip: Add Rock Pi N10 binding
Date: Mon, 16 Dec 2019 23:17:08 +0530
Message-Id: <20191216174711.17856-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191216174711.17856-1-jagan@amarulasolutions.com>
References: <20191216174711.17856-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_094746_408652_C4F184D2 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3399Pro SOM need to mount on top of dalang carrier
board for making Rock PI N10 SBC.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- Move som binding on board side

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 45728fd22af8..c3eb32f1a9ee 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -423,6 +423,12 @@ properties:
           - const: radxa,rockpi4
           - const: rockchip,rk3399
 
+      - description: Radxa ROCK Pi N10
+        items:
+          - const: radxa,rockpi-n10
+          - const: vamrs,rk3399pro-vmarc-som
+          - const: rockchip,rk3399pro
+
       - description: Radxa Rock2 Square
         items:
           - const: radxa,rock2-square
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
