Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5E11A88A0
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 20:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrCaQxhvRiFO5mjPewWYUrbCgFEz+f0IOuzXP4++bIQ=; b=G5gc9KVycdH/gv
	EXhO922rfZ0UO2QOpizxCymjM1G/7xBG6tpPI+95zpQrTyGxzNVVWEst8Qotb93eunWjg8ILUc5TY
	HQllAYa35sGTGT3kNbq2bDbBb/YoZi8lsq9q/E3vC+kNy0KJSBKWAfe0tuVaKuI04Fmn5W7e4ZfW+
	vAHUYkOFHDaXwkHzp2fhQL1B3vNcTAgkiV+aWNeC61aCHAC+A1+4b/GRlUJ2Fg+rwrMoWoh+JqLIW
	v6DVD0ssp2UQUZ2+iGG2PK1SsLXeVnz1KTBy1HztvvBQBPucXTf+DzTS/BfKahTFbqZg/VnKNSaip
	ML11Z0WmUELI1aMQiwFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPz2-0000ue-Ja; Tue, 14 Apr 2020 18:08:28 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPyz-0000uA-6e
 for linux-rockchip@lists.infradead.org; Tue, 14 Apr 2020 18:08:26 +0000
Received: by mail-ot1-f67.google.com with SMTP id i22so547001otp.12
 for <linux-rockchip@lists.infradead.org>; Tue, 14 Apr 2020 11:08:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aH6/bJSeqki/Vi5JpbdIfubPaLu43WdUQzhVPta/M28=;
 b=Rjhw3EP77Mfpinchou9JoqbnQdyUoDm3PnMi4ng0xVk/bJeo0XCgaWMl5thF0cnWRf
 S8Y9Et1Q/iIq3Nk5KBfLEqteIqIJDq2Y5ZtTVCpLFlXw/V7SiytpdWXhEaf5Vohw2kvx
 8ytccaIwcQ2mO4Rc+oeSYByf4N0u3/s2xFe2A5WS7pG2ybeZwBgS70J6X5BzfBPHKFWi
 StV8baR3jc0HBPG3hZ+zwh/NcN04Tf9Ro/uhbsMdOtF4KjkNpSyUbqFuybO7f0sped7g
 l6Ybt2wWHhuOoXnIyD73YUv81jzyzqtMe++skNGmYk8S3/4yH2CYQyomjhjzTxGGkqVC
 J8RA==
X-Gm-Message-State: AGi0Pua2AOrx2UygS4AIjVT7vQYBH6K51gWSM0F/SJUl4W7Ojdw2N/k1
 qa36t3za2RU7XSt0VX45KQ==
X-Google-Smtp-Source: APiQypKhRc4T3Riyr7q0PMZ9dtddK4y6BcSReW/3d5i8PAegHYWIM3ilgiExMX1m/wo3haK89CSjYg==
X-Received: by 2002:a4a:be89:: with SMTP id o9mr13224323oop.20.1586887704452; 
 Tue, 14 Apr 2020 11:08:24 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 62sm5490196oty.73.2020.04.14.11.08.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 11:08:23 -0700 (PDT)
Received: (nullmailer pid 31612 invoked by uid 1000);
 Tue, 14 Apr 2020 18:08:22 -0000
Date: Tue, 14 Apr 2020 13:08:22 -0500
From: Rob Herring <robh@kernel.org>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 5/9] dt-bindings: phy: phy-rockchip-dphy-rx0: move
 rockchip dphy rx0 bindings out of staging
Message-ID: <20200414180822.GA31542@bogus>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-6-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403161538.1375908-6-helen.koike@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110825_239851_B5A4DB48 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, mark.rutland@arm.com, kernel@collabora.com,
 ezequiel@collabora.com, jbx6244@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri,  3 Apr 2020 13:15:34 -0300, Helen Koike wrote:
> Move phy-rockchip-dphy-rx0 bindings to Documentation/devicetree/bindings/phy
> 
> Verified with:
> make ARCH=arm64 dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> 
> V2:
> - no changes
> 
>  .../devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml           | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename {drivers/staging/media/phy-rockchip-dphy-rx0/Documentation => Documentation}/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml (100%)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
