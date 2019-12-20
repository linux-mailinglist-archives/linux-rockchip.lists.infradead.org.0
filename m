Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2394D127ABF
	for <lists+linux-rockchip@lfdr.de>; Fri, 20 Dec 2019 13:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4eOCCjDMbusMfFZsNLn9C1iApD1SjfNks8OCf/gw5TM=; b=mIZ
	Hi/eedHV6ckIgUqjba7rHwq1S7Ib5FtcnfSvTj0eVgjCtg1yFI1kg9NcndWdWZ9yDV5y9x12iw8In
	OXMJxyi/HYRVXC4ZNeALuyfBexRmyzuOLjIDrJXnNN5dCC+WQy1JcptbakFk6AewD+1T7Z5Ww1URw
	kY2RuCIrWT7JGE0C0PgZCKsJ2hhKk7N+AzwmlgjZn8WeIuqZlgCA47i06l1JgMnfIsQutWUTCT318
	Dc7TJ7n7DPngtSs7qmlTRvywsib+7Sa4M8f9mGeYoUdwLlVW6mY2u2ROgX3seJ1C+7NvLqhWbPjDK
	wodKfXKjoa6atR1FX9EKQMyNtC9GzFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiH7K-0002jK-Q2; Fri, 20 Dec 2019 12:10:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiH6n-0002DL-5S; Fri, 20 Dec 2019 12:10:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id t2so9220683wrr.1;
 Fri, 20 Dec 2019 04:10:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=S0pnr3nn0AYuzGua9zuiRclMABFt/sduS8+fdDz3j0k=;
 b=fKXaJDUb6gSLYzCgHpdACzerQMB95lJNlCiFznE8f/Ss7IY6w2rV7BK3Es5TcjAcAX
 CEFs8mwpW19H0jmsTSD6vdZzq6CYXDsqYjan0HJU4TRvpdXddDdoXl/93Vg/EwetxI/g
 aWWjb+YAVTkXZMJiN6QeLQtVholhbOLmhwGQh7PJ1GfHID9XkvFzm9+mK7LU2nOCzEY6
 hJ2eDs6v8uo7b4mHtvh5o701wkZNJZ7FXeVRoiqDQOu81/RjuQSgTI92Vh6Kniqb+CzU
 rklPjP3ZcMREuhbWF3hwSNhYJ7WCW0bAnrCh2VzOPLIh2ar63zh4O9FY4qkeufWnoRVw
 2DRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=S0pnr3nn0AYuzGua9zuiRclMABFt/sduS8+fdDz3j0k=;
 b=bFt4vh/1l7LCwV3WUMwbYdjDhBR4ZmrdGX4Yhm1cPQmErQwWFeV2Ivyepz8IrmoleJ
 zjfAGed4+RT6Zha7oRCxq0mKf6njL6z7VSdcwOp64+G0tFQfHCyqk3uM9UmBGJShaXpj
 L993F4Z9dGlY+4Z/0aPOIG37lhZPl2RMmhTEUPeKBsnFXx87DbwA5UVbAfP0GvyLGtx/
 29CVMl8Sr4KrNxmWAJRb2WC5N9Hif/JisUjcfjBnlCmyVcIls9aKazP9geoDuFHlHKPl
 vBtWx6k4bhmJByYxFWxAOPRGwCrkhX9FpXC5Vl3HXKKpKbxxA70eTi/JhG04J02Yczdh
 C8sQ==
X-Gm-Message-State: APjAAAUsC1MXMzQe+9BwTnmOJaYHza84cVDF4TYixSsNitFmq1nJzcgo
 pWywrxWsKedjCZXFohoA3UI=
X-Google-Smtp-Source: APXvYqxz4JySI0uFXl1jq8Ac0DazRPpLLkKp56hG8npofCaMs8UjmxmgXnTjmZ8VgRgev06SnzD9iA==
X-Received: by 2002:a5d:6ac5:: with SMTP id u5mr14874567wrw.271.1576843814425; 
 Fri, 20 Dec 2019 04:10:14 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id s16sm9722493wrn.78.2019.12.20.04.10.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Dec 2019 04:10:13 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] arm64: dts: rockchip: rk3308-evb: sort nodes in
 alphabetical order
Date: Fri, 20 Dec 2019 13:10:06 +0100
Message-Id: <20191220121007.29337-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_041018_310940_3B0FA5A5 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Sort nodes in alphabetical order.
Place &saradc below &pwm0.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-evb.dts | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-evb.dts b/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
index 9b4f855ea..e8f15dcce 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-evb.dts
@@ -190,11 +190,6 @@
 	cpu-supply = <&vdd_core>;
 };
 
-&saradc {
-	status = "okay";
-	vref-supply = <&vcc_1v8>;
-};
-
 &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rtc_32k>;
@@ -219,8 +214,13 @@
 };
 
 &pwm0 {
-	status = "okay";
 	pinctrl-0 = <&pwm0_pin_pull_down>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc_1v8>;
+	status = "okay";
 };
 
 &uart4 {
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
