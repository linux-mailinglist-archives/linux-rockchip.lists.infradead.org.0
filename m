Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ADE1038E4
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 Nov 2019 12:41:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dffb/tk4cUnSt3KwNDo80TZD3Kbhww79Hp6RtcyTm3Q=; b=ajrIPzxCTOckcR
	3uHn7Kudqp5wPqImQKr6W1e9Vcra2FPytH3SK/5HZuG47wyI72BMG5+8bXMv18OO/nvhSIl083MPt
	Hks5WtMH+0it8piBQxydqRZOheKyGFR2NSbEfDMKTeciqMcypZWnku3JzkowooYgl8iPFWx4N/SMj
	suHekLHz8Obn+PvtHNhQlw+c6Bu0PsME3m6c9UrmXD4usP6oG5Q0kCxBLoeW++ArH6kocAE7ANSP3
	j6+d5bnSou7eptG1YSWDeHrXMcoOlXSBe57FET5Q4nCYynDiuttSwFIZiQd+oCbccmC1HE4F0upAR
	jMyR+nTWvHZMdbIIz74g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOMA-0002pS-4Q; Wed, 20 Nov 2019 11:41:10 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOLy-0002i0-8s
 for linux-rockchip@lists.infradead.org; Wed, 20 Nov 2019 11:40:59 +0000
Received: by mail-pl1-x644.google.com with SMTP id h13so13731636plr.1
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Nov 2019 03:40:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yHZJJcR8mQcwZhglzTTNiD4pcvMUD6TZgTIsDzGcbBA=;
 b=O/HEsdnxbKlIlsJpB2ra2/mVGYc1rj4DW0nHmoCdsMI4cTu8vENjQz1WZRXh7PGr1T
 nbaXbK6Y0F0/0Yw5P4oTe5UxN4inv6vEztY8YbaC8WJb5NPJxIrPSbXl9BQ1VsUu/IOF
 svc3eGcAHkOu5T4IyjVxlxLNBuBWeqwzGmYD8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yHZJJcR8mQcwZhglzTTNiD4pcvMUD6TZgTIsDzGcbBA=;
 b=IXte49qE0DD3in8El5eztVKBKSuaLyAE4Dj4pzdg1ftlcEuL13aMyYYalZBwRtZsDn
 A1O9BQZ9iWABmkiHr93mCx5fLjffzWHMj0ujYk6RwolVdhOH2Ui4PlObrl22zaoB8InG
 1BPbFhWZgdYq/70Nt4x4kmC8mdrGM5n58krI1uI8TWxhLh4huYtlQLaMl3zvTYxRuL/y
 XnJH7LTqYJX7aZv2dWOEV9ArzZtX5QK5NUHAapqmgE/VTTQuzRbBjMEYAazy36anfnmY
 uleIMF6xIcpWntA/MikXGZGxYb9wdOyHQkPC+JL1D4izNBP/xIV7VF1uDngVi/5LGv/P
 lF5w==
X-Gm-Message-State: APjAAAUN3yWPjnRy97N4eEAdKFnlUQsOAT1nSQFk1XrifMv7bCZVr8/x
 tKgmAN4f0QRTrpGM0CzEyX5GXw==
X-Google-Smtp-Source: APXvYqwL2xPmmw1S2n1DQYZu6NRmfHVe+rkrUT1QBX8EbWfOnLIX2lPO1PF3wh68DFJwzes/lU90sg==
X-Received: by 2002:a17:902:8f98:: with SMTP id
 z24mr2554339plo.35.1574250057480; 
 Wed, 20 Nov 2019 03:40:57 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id h185sm13492850pgc.87.2019.11.20.03.40.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 03:40:56 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/5] dt-bindings: arm: rockchip: Add VMARC RK3399Pro SOM
 binding
Date: Wed, 20 Nov 2019 17:09:19 +0530
Message-Id: <20191120113923.11685-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191120113923.11685-1-jagan@amarulasolutions.com>
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_034058_336827_1140EF32 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

VMARC RK3399Pro SOM is a standard SMARC SOM design with
Rockchip RK3399Pro SoC, which is designed by Vamrs.

Since it is a standard SMARC design, it can be easily
mounted on the supporting Carrier board. Radxa has
suitable carrier board to mount and use it as a final
version board.

Add dt-bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 45728fd22af8..51aa458833a9 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -526,4 +526,9 @@ properties:
         items:
           - const: tronsmart,orion-r68-meta
           - const: rockchip,rk3368
+
+      - description: Vamrs VMARC RK3399Pro SOM
+        items:
+          - const: vamrs,rk3399pro-vmarc-som
+          - const: rockchip,rk3399pro
 ...
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
