Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD10E1F893A
	for <lists+linux-rockchip@lfdr.de>; Sun, 14 Jun 2020 16:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZIRxlQ3fvY7S+r/gmQVZaaKUR0nCU+dbNjF8WHvq9Rk=; b=QDoyB+Tg4kJHaM
	fP3tmsNPuf6o2shTDsq4cEai1ufMi6CblO1i6giOCm9hXErNK1O2T9Vwmvfx3gT090ncL67I1THV5
	hcfvH4qJl5aDr8IW0/gG9voVAmgw4A6yj/ASwsX6DeVMNzyxvXKv2VOykiQST/X3KuV1b5eJc5au3
	/NCmiy8bh8JLaUNMLvNQGR8tzfm8GQ/SXm+rFb57OjtB0QSqwS5MNOV6qrjwwRh+y5eWcUTxg6Fa3
	p2pVh1Ffa54gvN2y0WrCQ4BZtfRGhrQrZ0ynevLWMKNMcwSKsp0Q322+yvwIdqw5j5M0wcf2imq0t
	DSeKRIl5W19cFkb81Aag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkTeY-00032p-KA; Sun, 14 Jun 2020 14:30:30 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkTeR-00031k-Fo
 for linux-rockchip@lists.infradead.org; Sun, 14 Jun 2020 14:30:27 +0000
Received: by mail-qt1-x844.google.com with SMTP id w90so10674449qtd.8
 for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2020 07:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YfTV+89obFwSW1LCQMi2C45DP5c+7DYxhy4AO8Jisik=;
 b=V6zoxkt/CRlg8jtMdy8SZTY3kg5JfvvtkksgcsO7rkW8VAT6W16tTMVDfBnctmIoOZ
 21ShNFe1/jySwnWtWSOdg0L18IhmzABS5iF5OPDo5cp5sp+cfQob3LhPG+wtRnY8P4ca
 wmPiUC6fqMiM1hX0zC7iej1cIAXexeobMkM2n+d1EDOcV6HSNRqRjQu4TXGfQ2nsBphI
 9Wv9WprpM8/npZJzGh7Zgv7C0bMb/4c3SE2kdSOzLqP9VMqYybtBjzxnQ/7traVQJCdI
 Eijrw3xgL9YpeFYGZCx9afJIEEtTytXLyPo5gRt81us2FxqidglNFc6OI1mZXVGsqD+N
 2bQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YfTV+89obFwSW1LCQMi2C45DP5c+7DYxhy4AO8Jisik=;
 b=B/3a+kb7ew3hk1edJQUbs/Teo1FeDVuYeIZtGzUAHNwX/rNQ5dFyJOM7aL99W/hLDo
 FRqbynHVUp3q3kPhK5eiu456SLFvQgghRKcV1hVQkVd4QkUi469cTCZeCYyHMqovQ5ut
 fEstoIdoyuLfxEB9amvbveHqRrVoFmEdbvPRWKR/TfGqOXUx3PpaclEFv0bQX0JlxLIR
 QXIbILAt7pGrw3gU5uepyNirnY82Af516qb8Q48Re3kvvYKuGppn03d7LwZxxPD58Wpp
 m82DxIivVfH/PINAV8OCej/1fCFQIMfz3xTKYPzfG3gG3zgJmDmmiKTepgLp+QPMumpc
 StgA==
X-Gm-Message-State: AOAM532zdcg4yzuHEs/mFeMw8h1sZ4gVtnoGJChrdt/sTeXWzc+ifydC
 fQVy+0sNGdm3ayuFhWzLHag=
X-Google-Smtp-Source: ABdhPJwsSrD0QQExvk5AoGm93lves3sk6YZceUzDqSgijb1ymRuzje4afRjq/QTUITn3nhgQaaDb0A==
X-Received: by 2002:ac8:6a08:: with SMTP id t8mr11602404qtr.271.1592145016101; 
 Sun, 14 Jun 2020 07:30:16 -0700 (PDT)
Received: from rockpro64.hsd1.md.comcast.net ([2601:153:900:7730::20])
 by smtp.gmail.com with ESMTPSA id j5sm10204437qtc.72.2020.06.14.07.30.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Jun 2020 07:30:15 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: set rockpro64 usbc dr_mode as host
Date: Sun, 14 Jun 2020 14:29:51 +0000
Message-Id: <20200614142950.1120694-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_073023_545647_42242B7C 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pgwipeout[at]gmail.com]
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
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The usb-c port on the rockpro64 does not detect devices reliably when in otg mode.
Setting the mode to "host" allows the port to work reliably.
This aligns with the pinebook-pro configuration.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 6788ab28f89a..3456ee97c288 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -795,7 +795,7 @@ &usbdrd3_0 {
 
 &usbdrd_dwc3_0 {
 	status = "okay";
-	dr_mode = "otg";
+	dr_mode = "host";
 };
 
 &usbdrd3_1 {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
