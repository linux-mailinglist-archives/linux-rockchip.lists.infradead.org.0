Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A7512BD25
	for <lists+linux-rockchip@lfdr.de>; Sat, 28 Dec 2019 10:31:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PAkL2kczGqcQKfIFpNYJl5rmYazMcYAeuFYEUztnoXA=; b=nAZFmUonCUnWoC0rCODLnvgKBu
	5mAkUwApqA8HLd78gpMJIEUKKn+Fn1agld0x3Vel1i8abp2vsoNE+q8P6cYqzliL13oBQAAps1HIj
	t3Li54If4v0StpIbz+YIGtwCGka57bw/WhhqL+5oBStRipIt3diqCQD/+PK4MxTN1Re5UxjtWBaE8
	zRSRg5YXTmm9jNAAFRo25gBBLXFlzhhcTNdAEbPF8x+kr3fJwUXfPBykJtgIG+OBw7bEmDbh0Gtyo
	65l0QgsOWAqEEYadlWR4DpIXUYMdGZgnr9EL2ZZS+LeO2a9ZRZuPFwJ/YIAtx9M/hpWPOcmrdcvbe
	q9fNWJqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1il8RH-0002Qf-59; Sat, 28 Dec 2019 09:31:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1il8RD-0002P9-VI
 for linux-rockchip@lists.infradead.org; Sat, 28 Dec 2019 09:31:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id z7so28135041wrl.13
 for <linux-rockchip@lists.infradead.org>; Sat, 28 Dec 2019 01:31:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C1Yhclh1rO03TNl8BGVnCeZSpEaHjzvQF/HLnspJXUo=;
 b=UF2l6vUzWgQRLwbEC3+YvM5hGubotXdidH8OdLBgnmTH/RD80HhdZlD88JdaS8GAal
 VtnLyQhrUP6hP/vSyuUkKE/khyWu3nwtzsIbGDp7hzJEFbF1NK/iqDKR0nRSmwBv/AMO
 /6EM7FQBM+l9hk9iFl84STiLVEO7SMKoVzv8o5mrSdKOjfI+yacF3q5eEgZNZ6KbUf7x
 BjqyI/gtQSN0bCjjgnrOsTRtl+HIjZSCxG1ywzPQpJ/DIJ3y55AvvclakTMF0FynwnVV
 fg8B4RVWtVKXnORJHh5oEosm6UZBcRQC1Q5cDdHmxoQZIMAm0q34TUMRj3BnEtzH1MZ1
 XzBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C1Yhclh1rO03TNl8BGVnCeZSpEaHjzvQF/HLnspJXUo=;
 b=heVILhEbTIJKDbwMtTIGyGErr+JYHW3i6YfeWjF1nvpuF6izd/lIoSIV6kTZ9dx3ny
 8EIDYDvgVzvcXikyE0DqmVdJR3cNQCdZYp7XP8j3WRVRzNUTJ7kbYdOXL3Lfo/BmTFpM
 52DsGwY6ZeQQWvVSXP9ZrCDM4ouc2zyr3tg/0WF1ghw8qqYJIhA0YHcRw7S4BcBHCchO
 z75t+5DCG4lm5EBorILjOOXMzFx5yo3Lck+EiEV180qi56+uLJn5zVZFnWKKWcP5x//w
 Xm462+z9YmQP2Jrqb7iBgdH0JuB5zyk/2rCsYZ/AXjUaASyVHZSn/qAfGXg50t9PnKwJ
 4JGA==
X-Gm-Message-State: APjAAAWCimQ4LLrynCv3Rm6FCESdGTZ1G2hhcQh9VBj5UZlwZpaK9qD+
 Xv5XfdawGzfGO05Rr2H4Afw=
X-Google-Smtp-Source: APXvYqwlnqVc7lbLCW9DYPOLB9f1dCvRIPPtiRq05ZZxZYuTyAl2jQdy3IZk/NVFYr5tVYuZRLMSgg==
X-Received: by 2002:a5d:4cc9:: with SMTP id c9mr53663014wrt.70.1577525468939; 
 Sat, 28 Dec 2019 01:31:08 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w20sm13776710wmk.34.2019.12.28.01.31.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 28 Dec 2019 01:31:08 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: robh+dt@kernel.org
Subject: [PATCH v2 1/2] dt-bindings: mmc: remove identical phrase in
 disable-wp text
Date: Sat, 28 Dec 2019 10:30:58 +0100
Message-Id: <20191228093059.2817-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191219145843.3823-1-jbx6244@gmail.com>
References: <20191219145843.3823-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_013112_030974_B7EAF2B1 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

There are two identical phrases in the disable-wp text,
so remove one of them.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
index b130450c3..d668d0fbe 100644
--- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
+++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
@@ -96,8 +96,7 @@ properties:
     description:
       When set, no physical write-protect line is present. This
       property should only be specified when the controller has a
-      dedicated write-protect detection logic. If a GPIO is always
-      used for the write-protect detection. If a GPIO is always used
+      dedicated write-protect detection logic. If a GPIO is always used
       for the write-protect detection logic, it is sufficient to not
       specify the wp-gpios property in the absence of a write-protect
       line.
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
