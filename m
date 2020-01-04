Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D091304D4
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Jan 2020 22:55:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53M6uujni9RkoZ//EzXKj4EGrMfS+CkCmTPhM2t6IG8=; b=CniJX5hIrfuKQN
	B2uNRbKyPYNsKAwV8yKwjXVe8XZoJEEl7ng9AJ6zCqilIg8pbJzqLjnzF3VJEbcaf9sGsiSMTDhT1
	g5QruwqiWmESo2p3hLl9gX8s6ohDjaYaBBvdMbl1dTgNQl0WkWHi/mEVH0Cc9Qv4GPeV8Qlv3M0qv
	0qP3fXAfQpzkdjy5n8BI6ei2tEOJ+HoYikCubmdI4gsdozi+nq/s9g8j9f04frde496VzT2rtLCtu
	siBlLx++sRN1NBODMyIhDxnTndpVH32L3bOPii7zu275N4NcmVO3tqJHqpLtUA0/qTzVVheRZCuvl
	xUqncyZ4S00bQcBrFSww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inrOU-0005rG-7p; Sat, 04 Jan 2020 21:55:38 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inrOQ-0005ph-N9
 for linux-rockchip@lists.infradead.org; Sat, 04 Jan 2020 21:55:35 +0000
Received: by mail-io1-f65.google.com with SMTP id b10so44766013iof.11
 for <linux-rockchip@lists.infradead.org>; Sat, 04 Jan 2020 13:55:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DpHIoc7R3nvhDkYlx8d7RkRksbRX6Kou1+9AvQFNTV8=;
 b=ZH4IiD2OM/enBtz9J/15YYwXSr7KyaKcLEEb1sQydpfiFqe7mgvRaO3cbcWD2zoaKr
 tH2wCe4/doKy0sqR1ncauYDO00AKiUDtRt+gkwxqM8IYPeI/hEy2O2JALRseLe5yW2IJ
 8WY//a55xetDUzydtEOgElqXtadvFlaGRYO0c9vX5PTaGil9czwqliqvJb/XeIvUSZAq
 kxbG7/oD8a9TNd2+IOWO30E1LM92xIXJ6K5pyxbs4WsrmBzgrba0rCCrOHZy2tpaWe9P
 baZqkEi0z7l4U3Xn0XGVI/eH3RAihDtyYIPZjTKtNtI7AZH5zdkdfZTQd85NNcPb+T1N
 Dg+w==
X-Gm-Message-State: APjAAAV4eKlLx0bkOqQ7kU2cEZ0EQGZI80gmNTmnukUllpy1VR8IILIT
 Pnxrv1yy5P1wRs58U+sGvNnOzLc=
X-Google-Smtp-Source: APXvYqyofXAsKiTkhzQaxw1btOVbS3jjxuyJal2TQqmScft5V4dxGRXMW6kiNweOMb2bYTUIXvf9lg==
X-Received: by 2002:a6b:6a02:: with SMTP id x2mr22839789iog.20.1578174933454; 
 Sat, 04 Jan 2020 13:55:33 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id j5sm15881820ioq.30.2020.01.04.13.55.32
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 13:55:32 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219a3
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Sat, 04 Jan 2020 14:55:31 -0700
Date: Sat, 4 Jan 2020 14:55:31 -0700
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: mmc: clarify disable-wp text
Message-ID: <20200104215531.GA28533@bogus>
References: <20191219145843.3823-1-jbx6244@gmail.com>
 <20191228093059.2817-1-jbx6244@gmail.com>
 <20191228093059.2817-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191228093059.2817-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_135534_754801_DE4A9E8D 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 28 Dec 2019 10:30:59 +0100, Johan Jonker wrote:
> "disable-wp" has been removed from all Rockchip eMMC and SDIO dts nodes,
> but people still continue to submit new patches with "disable-wp" added
> to other nodes then for the SD card slot,
> what it was designed for in the first place.
> So clarify the "disable-wp" text by adding that this option should
> not be used in combination with eMMC or SDIO.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
