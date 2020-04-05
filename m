Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED7A19EA9D
	for <lists+linux-rockchip@lfdr.de>; Sun,  5 Apr 2020 13:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vEC9ifNtQ9ee4Eon/tgvfcQLEogGIrxxJpI/CrIVD+0=; b=Qz/
	3a8A3eQhgZq+ikdm06D4iA2YyOTAk4Udu3v30j6vonRDcYsa9ylXw1MoAco8cdb85djegDJFcIaNd
	yBki05zfcwetWJq8USAewBX5RU3r7pzCrwJLg/J01f3BOKgRop1GR8b4U7lQs+o3N+qp4zt/Q+Jv9
	sysrKuHaql6HIxlV4IPKiFVrr+EEv/GWmXAibFS1rNoH/u5aEXxQSxb/pgCKn0m/QlMeOTtXVlp3a
	FWg3fLn6rP8wb2EZlTvReSesDxu3cwHb3hSGJCDl7Ctc4vFApwDpyetdOWDcx+uTHykdsA3rx1A0b
	2VdF/BQVb2ABdwaQPZLghHZjvNA9xoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL35E-0006XC-5p; Sun, 05 Apr 2020 11:04:56 +0000
Received: from outgoing2.flk.host-h.net ([188.40.0.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL35A-0006Ul-BD; Sun, 05 Apr 2020 11:04:54 +0000
Received: from www31.flk1.host-h.net ([188.40.1.173])
 by antispam3-flk1.host-h.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1jL34p-0007Uu-IF; Sun, 05 Apr 2020 13:04:33 +0200
Received: from [130.255.73.16] (helo=v01.28459.vpscontrol.net)
 by www31.flk1.host-h.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.89)
 (envelope-from <justin.swartz@risingedge.co.za>)
 id 1jL34m-00027v-EM; Sun, 05 Apr 2020 13:04:28 +0200
From: Justin Swartz <justin.swartz@risingedge.co.za>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: enable WLAN for Mecer Xtreme Mini S6
Date: Sun,  5 Apr 2020 11:00:21 +0000
Message-Id: <20200405110022.3849-1-justin.swartz@risingedge.co.za>
X-Mailer: git-send-email 2.11.0
X-Authenticated-Sender: justin.swartz@risingedge.co.za
X-Virus-Scanned: Clear
X-Originating-IP: 188.40.1.173
X-SpamExperts-Domain: risingedge.co.za
X-SpamExperts-Username: 
Authentication-Results: host-h.net;
 auth=pass (login) smtp.auth=@risingedge.co.za
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: SB/global_tokens (0.00700465061722)
X-Recommended-Action: accept
X-Filter-ID: Mvzo4OR0dZXEDF/gcnlw0VxB0mWeGZk2wSOLROvd+japSDasLI4SayDByyq9LIhVCODMyKVUA5BF
 Hq9af7rAaUTNWdUk1Ol2OGx3IfrIJKyP9eGNFz9TW9u+Jt8z2T3K7uDjV/sFUXQr+CDrNQuIHgQg
 mAX8Bxy/iUu0ThNZg0jxJtcVJProrT987X1VDPOqN+OoDzRTdku7DidYUZdNf38Sp7Of4wP429AA
 f49baR+f3He7jw4SoVhmTJ/3eP9ORQWVx8ds1M4qmk3/bYr2p8zbg4Paoa3pNVQ0zl7t/+UfQLYB
 qEPnp1U88kqVD8AM2G81dFO0E3gi+MOI1foZYzDggRXhpvoPtF3cVkniFXU3qJSqpdJudO6+rkiw
 E5i8Wl78Q18OeOfsy4h7jF1Uv9lnibl3vcBqVmvQB4A18adRHDV3Cg2VtHDZHoZSNr/jAVXirbLu
 Jjy3NtnGWLbnBGfrUBEXB2fYGLNieGQuoHtJvp0r29Rf3ZjFwL+MhHEWw/0qBlNDp8uABz3dkWV+
 ttWGem52QLIiDo2hv5/Q58JTycYLFeAN4+MGwnsp7SkU6CLbyF0Zq4b1/7rjUzETJrWks4pbbQJq
 6gWopI3ep45X19ZysgQ+31LcAX8eoFXAhohfegXGH2GIVQVglJFbK771YV8YbC29CtmpcTqTfSIf
 CWq9oj7OiT8GwpAriB+3/81I3rvR8KJ2fK9jiDYgiuaWjWJ1lPr1Ev5xNW3FQUl1thv0hd9gZGlV
 L/SEDgzCxVAfo0TfAdBm88UU/z2X2IjokNqZVv3KMEb5yncp4Gliqy40Rbjn7L/aSJSlbL1zKyEL
 KRIlJqopKieSGgZIDDCaOnYR+e17nmKXMy4iUno/l2R44/7at9DP1rQ8e6dbF/Yfz7ZwWRFpJHQn
 mVbGJJcMBQM8xFcyypgGsWJnLxUf4D3bkY2u9P2maVhPXuiOVOc6XrA4vsvWFPzHwIQ6neDt/vDy
 PLUXN2ILHndC4hwbA2fIdq9z/kUhYTDkDb9GLLhZsgdKPiGhHoIVmEgc3vQE4bdGRg51xWZ402gC
 TyXPOOUgfrQ68NrwMFh7KSObGsS+toWgXfk8WFHb2sU11qA6HXMtTTYLhUej0Yho17o8CVsONrMJ
 uGzuoGnKTKcyMAVhaIz/fGNqyRYsGJ0LJeBqPlwuAReGWkPdwxr2XgmbPrJVQzt6iVRPsiDvDuTj
 4oYwO9PC4N2NoF8mn/qyLT9gcYZ23l4P3JrzWS8jWh8xuwZvHnAADkIPtamKuAZddoNrr+WHg4o5
 S3beb97n9J0N63F3lSElipbV7k/tzvRn13OWvSfGlZ4x16b3bGBx
X-Report-Abuse-To: spam@antispammaster.host-h.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_040452_384040_DA15C13D 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [188.40.0.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [188.40.0.84 listed in wl.mailspike.net]
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
Cc: linux-rockchip@lists.infradead.org,
 Justin Swartz <justin.swartz@risingedge.co.za>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The Mecer Xtreme Mini S6 features a wireless module, based on a
Realtek 8723BS, which provides WLAN and Bluetooth connectivity via
SDIO and UART interfaces respectively.

Define a simple MMC power sequence that declares the GPIO pins
connected to the module's WLAN Disable and Bluetooth Disable pins
as active low reset signals, because both signals must be deasserted
for WLAN radio operation.

Configure the host's SDIO interface for High Speed mode with 1.8v
I/O signalling and IRQ detection over a 4-bit wide bus.

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 arch/arm/boot/dts/rk3229-xms6.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/rk3229-xms6.dts b/arch/arm/boot/dts/rk3229-xms6.dts
index 679fc2b00..cdfcef41b 100644
--- a/arch/arm/boot/dts/rk3229-xms6.dts
+++ b/arch/arm/boot/dts/rk3229-xms6.dts
@@ -39,6 +39,12 @@
 		};
 	};
 
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&gpio2 26 GPIO_ACTIVE_LOW>,
+		              <&gpio2 29 GPIO_ACTIVE_LOW>;
+	};
+
 	vcc_host: vcc-host-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -202,6 +208,18 @@
 	status = "okay";
 };
 
+&sdio {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	disable-wp;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	non-removable;
+	num-slots = <1>;
+	vqmmc-supply = <&vccio_1v8>;
+	status = "okay";
+};
+
 &sdmmc {
 	cap-mmc-highspeed;
 	disable-wp;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
