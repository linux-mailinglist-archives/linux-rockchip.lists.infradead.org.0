Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F610F6C0D
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 Nov 2019 01:52:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LUwfyGLmtK79z+4s191KuyjcReuYjQbYP9X4D+oTI+k=; b=WfO4RAzarMCT686wbEWAMkb0xY
	bKzfMNMGnG8IwPS49DMDpfhgGh8e/Tp9kk55p1qRQGfsQ/KKdYEucQBYt2HFcQo/ObB1UP6uX7ZAW
	38bqm3ebYdtqA09c0vpstLuMTSmyrbholab3DrtMIGgUVHQKUd4R8Eqe6BBW+gP/vMRzAQkr4vWUY
	E54EX8LUMlusLrzaa4DSN+EXpyyqtvJ42S21HcNIehQYzWdMSNytXPhHYbPFMgPUKL8mHV/j8dCiX
	77ptMmmrXWF+zscc2WUWW5Dka24WNVaxOqXH3y/njD9rTUif2S3Iaq/tkv1N4CvT3S4Oo+kTtAFCO
	9dzDm9Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTxwQ-0003Pm-J2; Mon, 11 Nov 2019 00:52:26 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTxwM-0003O9-Pm; Mon, 11 Nov 2019 00:52:24 +0000
Received: by mail-pf1-x444.google.com with SMTP id s5so9448089pfh.9;
 Sun, 10 Nov 2019 16:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XhEDQ/cgXNxaPI54oMDT2IYwpDZQqZFGM4s4NbwaGJc=;
 b=hxXNkML5DhAHSk5FcxWj03eIt/Jw36dBl5uQR9uDzl8ilQmjZo+ytxQnf9rwhhTSaX
 xWlRWvv/72Bnc+AfP1T2GQOa9+pvMIixcBQ93m+O2ukW+YaFxU4E8SZ9cPTOAZby/bTH
 +NRp+WyGD5jPsvBVTt6Ijs/CMB4pieWzSHqNNJSZa/64gcuvaLtVl75KClxkedIPl2IR
 gImQQ/xw0ZnStJ0t44VKS11St/DplbnQxysRIiSwVluprlZX4jaY0oAQXyKhmbkpHWgv
 QnRu8QGsAkAZHGNAUyzGud1lV2X8yZQN9BfjD7f+Oaeg61tp1F+LTtLi9rxD9fvvnyLX
 R+oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references;
 bh=XhEDQ/cgXNxaPI54oMDT2IYwpDZQqZFGM4s4NbwaGJc=;
 b=m/JR/dbVEhdld1EbVySB7BrmLJ8O0a+tVzQx//cntRmf2u5Ju5JsOgptbl7kJTJlPP
 NJoXzT+nxqLQz8WV21QQhlZHzDk9u3O3aZZKnz3/xevoh/WLsw+i8W6OeMqq1vC6TsGZ
 6m4KxdacoyEVgm0mr+MqdXr9OK7VhsQ77kkuMtjo5VFxa9IoHFeSoNtCKP7vrmUkrW7p
 wu0U3qgfI2Qr3wlW2hw3rAQh09sIF06tWfqjD3HUEwWcOBL8B2M09HYAWfA4XkS8vsbS
 8caO/lOmjQbTRVkgUKUt/WzN9v+SsTFJrFhFkwX91BkZLQQpmLZpyq2G/vx3Htdfs0vV
 GQ7w==
X-Gm-Message-State: APjAAAVLaOeYsOIYYr6WkkiP0usB1G9oh7ftvI4+gAKcCjbhbsOfylxK
 X03G3c0ruWikJPtsIZZkHiDYKyfs
X-Google-Smtp-Source: APXvYqwuCk613FSB8w3di7lR26kVpBOHSMi2M6Z2z8SQ3OJOvPTxhs1BT4B4P/dgdpMmYBqgML2SdQ==
X-Received: by 2002:a17:90a:a58b:: with SMTP id
 b11mr4186806pjq.46.1573433542041; 
 Sun, 10 Nov 2019 16:52:22 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
 by smtp.gmail.com with ESMTPSA id e8sm12449215pga.17.2019.11.10.16.52.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 Nov 2019 16:52:21 -0800 (PST)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH 2/3] arm64: dts: rk3399-rock960: add vdd_log
Date: Mon, 11 Nov 2019 08:51:57 +0800
Message-Id: <20191111005158.25070-2-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191111005158.25070-1-kever.yang@rock-chips.com>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_165222_866816_C1A3C018 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kever.yang[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add vdd_log node according to rock960 schematic V13.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index c7d48d41e184..73afee257115 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -76,6 +76,18 @@
 		regulator-always-on;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vdd_log: vdd-log {
+		compatible = "pwm-regulator";
+		pwms = <&pwm2 0 25000 1>;
+		regulator-name = "vdd_log";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
+		vin-supply = <&vcc_sys>;
+	};
 };
 
 &cpu_l0 {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
