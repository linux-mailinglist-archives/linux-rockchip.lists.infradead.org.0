Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAFA1730DE
	for <lists+linux-rockchip@lfdr.de>; Fri, 28 Feb 2020 07:15:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wxNGRSAbH6ZpRJdlIyUGBQyxWZEXb1pF5VD3C7TXplE=; b=gC9jlsZN0GnJ/0mv40M9G7DDwm
	klKmva+YDkhzMriXax1fJcHzexg1cjaRhWzILNG/ASNx2HQnCq0y1h7akFb9Sgm+9zWF0jcM1kuNJ
	o9kwJ4qNieboJFnpV97F/fi+9bMFolK08d9NWBElpP/UN6imvxakkHW0EF6DbTlOiP6EfndWpW7gh
	JqKlFmRzYITrbpcgPg5gwt9K1RFVAMHxpyqh6AdIDAA/A0NoeK8Liwhu+LF/wFf3CeLlTEIcWNjl3
	vFufG8k7CvgazgUSH/GJ6w5yXZsb4LZhUEy2bvpp1rArzQOQt5buSpb2PIyADzYVybiVEYmxiPK2o
	mljrjp/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Yvo-00020g-1x; Fri, 28 Feb 2020 06:15:28 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Yv7-0000KW-Dh; Fri, 28 Feb 2020 06:14:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id e10so162594wrr.10;
 Thu, 27 Feb 2020 22:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fknAu4Mi7mPoGch0tjoJSjMYmeswX/bt/k6r2YfuwWE=;
 b=VUwJLlVXSKSgcaIhw50JvvmveSXLCDh1CGogCEz6lY1i29ZORjezua0aUrYDvKjrha
 MdGmcns+aYzVqlJMcmsJksgBCbZQraZJAfjKOOkhMhtpTUPP4TysyoaDqLZyuvTWhEEX
 vtcoKmzezrGBibu1JPmMDFYFHvnJq2o0NOnXIyd6MQBuYT6f4sr/WecMVe8CO+p7R9Nw
 wZtuIAcgL9gdrsGJECb68Cfmc/rthyi0qLTKIBq+gq7FT1YvEpsW6MBQ6IMkrBXjj2/n
 V/ti3NatCujPiuT54QMWuJztFIpJHEJ8PalUaEi98DrQQkaPeNOdRY4lqm4LE2P6sRJt
 xOGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fknAu4Mi7mPoGch0tjoJSjMYmeswX/bt/k6r2YfuwWE=;
 b=hjh1DEt455XnadTTt1MtIrqejtxET1GbM8BjrK++FxWRThJt0wYXCdgoT+EWgxyPGS
 CZHTVS4IxnTUGNVteMvNKHddnXoWc9RKv7n2hxNxA7yt+CLYb5i5jtuEVT7IUB0cAR0p
 mC9A8lg3JMOMW3qGcaocKsrkwsKYhSVfcOuI9j0qVDHYVvvu6UFNN3atMvT5a6ocKVdF
 k2+0P5rev5a2ZDgGfl5qMvE2NRkC5rlwCKO1i+28Xu72P03iSRG0UQM7BXv4nDKCEjHv
 nIZAfODXN9xhZrtajYRwFr51c9xFgIW654cQGsruRcoANtuWrTf9CF0TVMznaM/64Tgw
 1Y2g==
X-Gm-Message-State: APjAAAVmFOWjDKWC+7wL5avvHH2zG09ORPAPqbeztX4nQ0/DiXqMpWpW
 x5e41LUgKr7t1yIEdES4WNpejdqk
X-Google-Smtp-Source: APXvYqxErNBAtzXh8TNUphjZpmr4q6vyV2vjAJ24Bzh1e+oe8X1teN/nm2W6cUBiA2AP/eUn8fffcg==
X-Received: by 2002:adf:f892:: with SMTP id u18mr2954643wrp.328.1582870484010; 
 Thu, 27 Feb 2020 22:14:44 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w7sm682554wmi.9.2020.02.27.22.14.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Feb 2020 22:14:43 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/4] dt-bindings: arm: add Rockchip rk3036-evb board
Date: Fri, 28 Feb 2020 07:14:34 +0100
Message-Id: <20200228061436.13506-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200228061436.13506-1-jbx6244@gmail.com>
References: <20200228061436.13506-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_221445_458611_7BB9D1AA 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

A test with the command below gives this error:

arch/arm/boot/dts/rk3036-evb.dt.yaml: /: compatible:
['rockchip,rk3036-evb', 'rockchip,rk3036']
is not valid under any of the given schemas

This board was somehow never added to the documentation.
Fix this error by adding the rk3036-evb board to rockchip.yaml.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 203158038..d303790f5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -468,6 +468,11 @@ properties:
           - const: rockchip,r88
           - const: rockchip,rk3368
 
+      - description: Rockchip RK3036 Evaluation board
+        items:
+          - const: rockchip,rk3036-evb
+          - const: rockchip,rk3036
+
       - description: Rockchip RK3228 Evaluation board
         items:
           - const: rockchip,rk3228-evb
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
