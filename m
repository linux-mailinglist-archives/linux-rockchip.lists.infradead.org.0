Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1720318E4ED
	for <lists+linux-rockchip@lfdr.de>; Sat, 21 Mar 2020 22:55:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z5jX2XH5+hSezNcleg5mkrBYDJiBMxkJWS24hcTYrSk=; b=do/StLdghXQjA5i3VTtQbF7HXT
	DAezXvMlFG2iDI/c7hDliko1c5k/awQDM4fY9PksXIM/YW/O2if7IBoqq08njMRDI9/TzX/AoOYwJ
	dlFwoWfhkdxNQWHO1IkWZ8QJ9CGRIZ1Np4/Po0r6B1l36f5p0481q/9a56KtD5WguPjc7pel1/n8c
	1CRjoHeQNIkESgbn7UYZYW5xBSudROlgpEUCMav8dixdNvXK67jmi8CG8mg07LsB+vGgGCqxqP0uS
	CseYHZwlC0ZmUCFBT4aPyW5oA8zpibPZRo00MskevvdyazWn0SwwnK+MLvzgF7cccltUkENp9I2Wu
	LYR0UHPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFm5N-0005IK-WF; Sat, 21 Mar 2020 21:55:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFm4f-0003aN-SB; Sat, 21 Mar 2020 21:54:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id v11so11855111wrm.9;
 Sat, 21 Mar 2020 14:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/QGnM5aF633O9T+Q9bE7j7rBcANzw8cmYuGuF3OhlUI=;
 b=mE6DwdoCdvIrq6k6mckByOPROcnYRtJTsjJ01FfrQUXQfQpHOjpQ9NzteV55TDBsso
 J4bH/fAaVcbTldZtFetSL8nR6F07U7J/hNn29UDMnXCRcZVPHkFxw5gpn4B2J0hLfHip
 MxxqYLK9vMc2y7FCJaDgCV4Gt4j83HJ+X2p/NJPveRRn+SekYle/XHJEhGTkx8xJHXuw
 e7GarbzUhAR4IbNeUUfbrUIlS1iqmTJP9Wq5EgEFaFBR9JgwqPdwXbNF0htckv6c5rbQ
 O0D974ktV7tGRy4zpHbfnd6kPNXPMWZmPAIQWPfLkHeLmFO0hYFU1yK/ngn5Z2i42fby
 llyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/QGnM5aF633O9T+Q9bE7j7rBcANzw8cmYuGuF3OhlUI=;
 b=J5YvVW+Ufl9yceoqpgFQubRXRbswpGd0XhMiegrV8Nl0qNRvnDokduq1gOEk1O4NqF
 +j2bZxNVFsfWfB2qOh5zDOn+/QSnipOwRN48Qo1zsFvRq5bVdS9XaXcTqxqXGsz5/kIv
 l1oBtEVhXO/CwTn/GtGh66WRvn3vYuezUD6/6DYBCpJ1ByWHZZGV48ON5EfYf4uiOoJD
 QJsIQpge/qfQVe0VYO+S7617SepsxFbtreJvcpEvVnY8kuCKvHcGnkxS3qz1fR2BYM6S
 BF2wC2KJsPeXH6JyDi0KBbKh7w+jgs06tlljteEB7zYii9gQqITH9gi/dZviDnQCzdlI
 8UxA==
X-Gm-Message-State: ANhLgQ1mXCt1glWRsfRc+wd9NZGKqD/o43o4esVUlTy3U+2BdjxOyWn9
 rtD7MY47HHJrjg2rEhoU1II=
X-Google-Smtp-Source: ADFU+vuhRHlUNjw0nRmyX68DRkdDY/81x1nxjG77MQWmrMGsuHpBMKBLmYWp0wdtVlI085MN09BICg==
X-Received: by 2002:a5d:5386:: with SMTP id d6mr12268879wrv.92.1584827672086; 
 Sat, 21 Mar 2020 14:54:32 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id l83sm14113796wmf.43.2020.03.21.14.54.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Mar 2020 14:54:31 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/6] arm64: dts: rockchip: fix rtl8211f nodename for rk3328
 Beelink A1
Date: Sat, 21 Mar 2020 22:54:19 +0100
Message-Id: <20200321215423.12176-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200321215423.12176-1-jbx6244@gmail.com>
References: <20200321215423.12176-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_145433_908673_EE56A33B 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, aballier@gentoo.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

A test with the command below gives this error:

arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml: phy@0:
'#phy-cells' is a required property

The rtl8211f node is used by a phy-handle.
The parent node is compatible with "snps,dwmac-mdio",
so change nodename to 'ethernet-phy', for which '#phy-cells'
is not a required property.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
phy/phy-provider.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-a1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
index 16f1656d5..fbd06a351 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -114,7 +114,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		rtl8211f: phy@0 {
+		rtl8211f: ethernet-phy@0 {
 			reg = <0>;
 			reset-assert-us = <10000>;
 			reset-deassert-us = <30000>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
