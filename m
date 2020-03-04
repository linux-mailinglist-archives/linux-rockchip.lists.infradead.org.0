Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4DB179829
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Mar 2020 19:42:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Fkp+BDZl+sv5qMmpVDTSrYxWETwp3v5GeJfyNnu367I=; b=dP7VATZSDfUJzRkj7Sjquqn/GJ
	GAouHEL3yV2IyafmmXoP/9SHydSTFX+3rc2GvRKPGUOCeV7h9v+r0rW4kd43ewgNvGNc4HkKf+07l
	RmoO+3jVfMBjmWSrDIuCMGrdqs5BTA0TM9fBtLWTFhdI9ZlJPBCIWsmhOaFtRVWAggxDebxA4oRAm
	dz8k5gomDtiYS9zBYfauwv4lpFbPGqoiOKzULV8/5O0OUd/W7ljSC0mNKDssUkRlvxri9+xlFmKES
	GU2zSvGjw6WcT4fSP4DAhpUDDct/u2xieWISyAV58oukVvGKTyZuCDPIjQDeIu7TnJtiqj+jd/a1s
	/Fz5R00A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9YyP-00044B-LI; Wed, 04 Mar 2020 18:42:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9YyD-0003uG-F7; Wed, 04 Mar 2020 18:42:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id q8so3739935wrm.4;
 Wed, 04 Mar 2020 10:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0UatWJRIzkcWGUuRmNqWrdQb/4B3d2GrjC9oWPA9fFA=;
 b=bu7AzKrEyWTLSQWup7Y583C+Z80x7nj+gl8okSAguu48FQinboxTn8wHQch3TOJyNC
 me9wGMP9R8Y3tNo7xuMfNOpnim3WB9zW6bfXkodb851c1qFe94gra0/00vMB8Vs542tn
 Z9zlqoXG90D5OaMNL7AGTXDTbywHoUJ0DjgLNaS95f3u12T1AKAhQ91hTIbur0j8jkXh
 zJgJEFGx2AJed/Yxw7LkAgV4OmpbHYZ4l1Gjolav8pNzQFhq4XGWJU2vzZ4FnqbwGOxL
 vuQ2r5ciLliE2QoWKKQwB3Jhve8SAbGU8igivsH9cBhmCNLtCl92eq2d5FbtMqSkJows
 pXWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0UatWJRIzkcWGUuRmNqWrdQb/4B3d2GrjC9oWPA9fFA=;
 b=pvMuqvV/0ZRBv/tFH4icMBNw3Sk4SI5F7Fhg9Di458clgQat3dqWEJd5hEdM5Epf6s
 Bfjd9IdG/ZTHYXSCxsoJha6vrKVNzimWE0rVxVAQIALUxcyAaxl4nV587IVc0/4Z3Cqc
 ykqKZDlj0N4zrqELAI+gZ+HiF1J0V7UJCi7ZbmZqNuyE3r7eHMfHy1g5AotIlsh8M1KH
 Y0lnkqVJY9uUo6o7jzHDP09rWinfkpGNn29QTvKztjPfm+VN0aSrTEI1SNg1kspFcwW+
 H4VdM0G80esMcxGONP03PYjqu+e9x/hzM8LpWzhGHzgKCDN8F3iBNzykQPC4GpHGmgLJ
 Kcgg==
X-Gm-Message-State: ANhLgQ1G9EJIm/Iz7Os8T/Buhd1Pd79uP7nyTW3N1TV/XkvLjYMFBUWk
 A2v0TtN+GWJ3GTBYDWMHv9s=
X-Google-Smtp-Source: ADFU+vu2xLFs0sTZU9LUPGXLq1/B03boUDmHmJpVrmdihRJCfutuFIrYDce+tXyeVYoLabi3eyl4qg==
X-Received: by 2002:adf:fa07:: with SMTP id m7mr5254056wrr.384.1583347331260; 
 Wed, 04 Mar 2020 10:42:11 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v11sm28175848wrs.54.2020.03.04.10.42.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Mar 2020 10:42:10 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: broonie@kernel.org
Subject: [PATCH v3 2/3] dt-bindings: spi: spi-rockchip: add description for
 rk3308
Date: Wed,  4 Mar 2020 19:42:02 +0100
Message-Id: <20200304184203.9548-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200304184203.9548-1-jbx6244@gmail.com>
References: <20200304184203.9548-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_104213_532508_7075FF74 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The description below is already in use for rk3308.dtsi,
but was somehow never added to a document, so add
"rockchip,rk3308-spi", "rockchip,rk3066-spi"
for spi nodes on a rk3308 platform to spi-rockchip.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes v3:
  remove some comments

Changes v2:
  add acked by
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index bd1450c12..456896e2d 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -29,6 +29,7 @@ properties:
             - rockchip,px30-spi
             - rockchip,rk3188-spi
             - rockchip,rk3288-spi
+            - rockchip,rk3308-spi
             - rockchip,rk3368-spi
             - rockchip,rk3399-spi
           - const: rockchip,rk3066-spi
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
