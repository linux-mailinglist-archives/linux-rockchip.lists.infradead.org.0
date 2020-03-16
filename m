Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2FB1870B2
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Mar 2020 17:55:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GBSiOmAw7YOxDaGh5gsSAjX4e/hQ/QX8Y3zAfsDDa8Q=; b=DOt
	3KPogqMxOXIqHaNEBsX2quhF2EJWHDifhokh0WNuyIJ36wFuj0T0tTy8GRljVYGzE2j0g3E+bKafO
	VJ+0SaM1ZAvZzjfw2LQw2jdOGWMYOn17IhewQvBHbKwMcqAKfR6fVAxmspp1JcaLDmv7PbmtzyY4f
	TCXfu5zPfoPno8prH5FzOWsHao3e9SiCHSJ97xbmQhONestaGY6N5k7/Qt5nDofH9Du+S52W/sKIo
	nSrKPzFdSdvj2Pf3t7jppWHsPZZ2fwQkLXCP07irPnj1MJqEuDZqs++A5JiqfE2NnXvKmava2dz/X
	yrr7czhCv5BNmqZSQyUC/MIuXzgB1OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDt1e-0002Ll-27; Mon, 16 Mar 2020 16:55:38 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDt15-0000kc-Tp; Mon, 16 Mar 2020 16:55:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id f3so15169032wrw.7;
 Mon, 16 Mar 2020 09:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=AQf2iKCEsB/GA9ZIoAYJPyIaIBV5OxWUOZmM58+bafY=;
 b=trk/L3v++ANqrIUVITso6ThLzoP1KahOPQyG7f8RK5X5q2u/wheKNMpf80UEm7iu5p
 YM/EYZSgLlPVf3nZ/cVs67W9ZdFUUkSMnASQkzH5pE4ED+HmN8NehI4U6sKayo9dGb7d
 zIBRSuqUnxQJu9mC5j98ddHovxCBddjWuvkzv9LarLbnWbeMnxRFxli8WIadqM+P2Zmv
 3HvLdKmgkN4foVGlIhjfyjledLRYqhQtOya+ywYKYBgl9hodD1aE1UQteJSqHl1YNkVm
 qak9hC1IS0zag0Aw5T00naucmeaCjTOanLhKv/mDlE3dD8SPLYPUCXxvehtXd9EUrr7Y
 IGxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AQf2iKCEsB/GA9ZIoAYJPyIaIBV5OxWUOZmM58+bafY=;
 b=jJb20f2DIuEEgyudGgZHGCz6ifE8+bDXuERfPDHAQzeyAhQbKmfBPUThA1nBdkCAka
 lWD0t5IuchfNF+XQppdo7RmybKGY7tpaV9SZx4hDXGUJaduff9kcjYg0j3sh5PvKQQ4E
 6rDMC5PkPrwwNkXG4oexO1lE51tpLEcv+f6j+MM2Cn6Dcye4nHVnzcd/mQxcYP9yZqgb
 s7UcPqdqS+9VJKL5n5POOmmgtADqFVZx43LLYZ4Nvfj0xuNZQIygs24WBD4EdIzhqtBr
 GQBeTT2Qq1zcvx9/yWI3kjhi9ffyC07+Im5+SS/P9M6zxJgHIh2TV7PjYygd7h60uI/w
 KJFg==
X-Gm-Message-State: ANhLgQ2uHSHmIo4FKt577f+g0XVKkyWq7z79bTxQpUbqUPUG2LxLNfmA
 zOCq0kkxsKViNpxdI1tRWgvoJnkA
X-Google-Smtp-Source: ADFU+vvHWm61UIugggtzM8uXyDIcDZdkvbs/hkRGyfkWWy7W9YjHvfNGqeh/+hEgajI/lmViYUCLzg==
X-Received: by 2002:adf:e68d:: with SMTP id r13mr328647wrm.170.1584377700423; 
 Mon, 16 Mar 2020 09:55:00 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x17sm359381wmi.28.2020.03.16.09.54.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Mar 2020 09:54:59 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: rk3xxx: fix L2 cache-controller nodename
Date: Mon, 16 Mar 2020 17:54:53 +0100
Message-Id: <20200316165453.3022-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_095504_259299_0C227CDB 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

A test with the command below gives for example this error:

arch/arm/boot/dts/rk3066a-bqcurie2.dt.yaml:
l2-cache-controller@10138000: $nodename:0:
'l2-cache-controller@10138000'
does not match '^(cache-controller|cpu)(@[0-9a-f,]+)*$'

Fix error by changing nodename to 'cache-controller'.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/l2c2x0.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3xxx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 9438332b8..f9fcb7e96 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -91,7 +91,7 @@
 		status = "disabled";
 	};
 
-	L2: l2-cache-controller@10138000 {
+	L2: cache-controller@10138000 {
 		compatible = "arm,pl310-cache";
 		reg = <0x10138000 0x1000>;
 		cache-unified;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
