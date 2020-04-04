Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F0C19E4C9
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Apr 2020 13:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d3Y89PrXlnFOKLOkiI3LvjFpfI4J7vfOnlcJnsSrKLI=; b=hV/cDtWW68ioXee4ZyIRl5X20O
	8RDy/VzQ0HysjnpBRdeWzOvintWPfawtukbipK0M0cQkchJDNh+fdpIAXCkp+pq14HXgFz1ZfpGdp
	Dk47FhnsRqSRLiRpBCSzOcTUgl97f8wxp3nmwf2pJd0Qavc6LlbBwR0SOETsXJpXoTr8hG07jjNrf
	dX5L4S/JaifVjGbT/ADeop/UjFg4a/pMhoGv6Yol24L1ntSgdS4/veFiFMHUDx8CikJifV2pnRW/7
	fMVtXIbpUB9QdXzLqaC8sqmlOq/U/Ayd236vg0NEQ/rKWpVvw5ckNwl8ZtDLv4kq8ohCcbdLuCHKl
	XcU8iPlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKhMY-00047f-Ho; Sat, 04 Apr 2020 11:53:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKhLo-0003Qh-OA; Sat, 04 Apr 2020 11:52:38 +0000
Received: by mail-wm1-x342.google.com with SMTP id t203so1321010wmt.2;
 Sat, 04 Apr 2020 04:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NEH69Or2hzeYwgynW/zdgYOrxtAvoDOcH/4r2+cx3GQ=;
 b=IQ1elwuQfrv7z7KBKqsfXe+nJtZ9EpUmkp/QEgxZh1eGAsSzPCh4Pw9aelJPkO1lwd
 GeHg5B8Yg8SksRakKG3s5qyUWai+DwoUPCZzPAX9VG59mZ3lxjpIlgM0qT2LqFV6RMDS
 EzQPLB+oY5i/+g/hbAt3vmNL/foVckzdilsQWAa85V+uD0PM+vwECrMcaaBiGOvtVXMO
 aOuDKZxfO2lKiCVnsOC0uXYKUNBEplAHX6PjShJbIFLpuaLTL+JD2FH7FdjUgA778seH
 R9zIV+cnmbX28Q/5I+reBqMmD5G6QBn6dCZ1GnBrfcinWAFvtlhPJuY7FBJqNa7HtoEE
 ZlKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NEH69Or2hzeYwgynW/zdgYOrxtAvoDOcH/4r2+cx3GQ=;
 b=eWrPfgboqnf6CXP1jHjA6hMbaJVi+z8H5Z7S3HnZLzYmhAmZXm50du2tucAMofhLgF
 jH4AINIVZ1/YdoKukBJIg6T7GvJFfr3tkMACb68pAFqTUuwIitjR3wTCZ/aFr+ns2f29
 sTCi7E02/WktLgbZupX4z0gaXn00sd+X6TzaCOkyJMJ+3QIhpt/k9NvzUmDrIVLsA/2i
 RV82FSQ9lVoM0iL6eL04iLphU+DEBV75KAJvp8UqlcsBY3wlibvdDL1JFIS0mxkvsXg8
 WPo+KOFx4sbThS3iOAdDZPcnAQIIg20geX8zAXHO+9kOJbnKRLJO67QiMWPEaRKHcQx4
 ECvg==
X-Gm-Message-State: AGi0PubnnUluarwpCwnmV5E7o3OmnqBFCWRlX2rKeBcA3i61SDxVGvJw
 l6pZbtVEYNMoXr949/Uw4a8=
X-Google-Smtp-Source: APiQypLsS+luw94/uZOvPuvg8cKZwf3UNkI9eP06vdLN8Yj2UZWLbMLjom9VgzDkuQr2GPlhAP/WPg==
X-Received: by 2002:a1c:cc11:: with SMTP id h17mr13428237wmb.39.1586001153735; 
 Sat, 04 Apr 2020 04:52:33 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g186sm16183276wmg.36.2020.04.04.04.52.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 Apr 2020 04:52:33 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: lgirdwood@gmail.com
Subject: [PATCH v3 2/3] dt-bindings: sound: rockchip-spdif: add
 #sound-dai-cells property
Date: Sat,  4 Apr 2020 13:52:24 +0200
Message-Id: <20200404115225.4314-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200404115225.4314-1-jbx6244@gmail.com>
References: <20200404115225.4314-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_045236_794852_68E31205 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

'#sound-dai-cells' is required to properly interpret
the list of DAI specified in the 'sound-dai' property,
so add them to 'rockchip-spdif.yaml'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes v3:
  Add reviewed by
---
 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
index bfd44fd8e..f381dbbf5 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -57,6 +57,9 @@ properties:
       The phandle of the syscon node for the GRF register.
       Required property on RK3288.
 
+  "#sound-dai-cells":
+    const: 0
+
 required:
   - compatible
   - reg
@@ -65,6 +68,7 @@ required:
   - clock-names
   - dmas
   - dma-names
+  - "#sound-dai-cells"
 
 if:
   properties:
@@ -90,4 +94,5 @@ examples:
       clock-names = "mclk", "hclk";
       dmas = <&dmac1_s 8>;
       dma-names = "tx";
+      #sound-dai-cells = <0>;
     };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
