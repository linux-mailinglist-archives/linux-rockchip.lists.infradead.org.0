Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7481370C57
	for <lists+linux-rockchip@lfdr.de>; Tue, 23 Jul 2019 00:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRgw55x3LmrqPwWxz29X5t4PnTwk6029Fvk2WFldiZM=; b=fFIZSw41cuhWqs
	VizBNGHbONpwjE3lCsgDl9nVuRcmnQNB2taq2ltPw6gW4uH1MXjS6KpoCf3oDhsa3HyChb1jcfOot
	rQjdUUVAanptrPEWesGDgTl4YOBhPoNpsvmm1BP3xLDvaAYzquti8pSe3PUd+IQKaZrZKKmIaORh4
	OFncM9SLKnTLUpNNnsagxokO4L8Z0sIKMI+oDUVTH9qXs4zhWa0rg9eVea53zv/NYbg+Jv8VlSLlD
	i47v1x4DdXDw0VdZlg0uKoHrB+Z9zBRWRMzUyudKMWxIkLljD1cAS/o1tzhSUeXSno6gaTrYYml+H
	pbduosWU8mb3Uu7IGZ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgSw-0003PI-UM; Mon, 22 Jul 2019 22:07:31 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgS9-00039O-Pi; Mon, 22 Jul 2019 22:06:43 +0000
Received: by mail-io1-f65.google.com with SMTP id s7so77367701iob.11;
 Mon, 22 Jul 2019 15:06:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sRWJN0Pa0lu43wjFvqcKPLwhiVJDCNgY6Ir4WcVPL0g=;
 b=Dj8gX0A3pwl6N4D6Fufox6lx/V+zM5EH3TaKK4VhLZPWQZZUlTz3rSuc0rPdaqVRue
 5heAirakJBrjL5zv7ZgBsSM8ZDJNb/kmQjmwYQIQ3Gqo6CMsjlihmrVpySQXI1AKnpt5
 RhZeQyobSGfl2pVuUGhIP4q6r1h8DlF7i3QlsVK+GnBCM8CNsPjmYmcJnIV4BES13ctn
 hk7iLultk4gVUUNs3nTM9HQxxcl+2eUf5K0mhYIrRS8hrxF7TETHc24NWcw+Lds5TcOP
 gCF3hq24UMnrCgZa/k2hHwdfosullftVrRg5W8Kp19aI0iHtrXI3dU9lHj2EjrjZTFFy
 iy0w==
X-Gm-Message-State: APjAAAW2hR0W8rQQArITMWUnW/NdjTBLyTto1nALD5UZ70/zu1IWGVpU
 s/7fEXb6woyhB8PNKukcqAOvvZA=
X-Google-Smtp-Source: APXvYqxYaQypvjgJjL4nEq60H2lrbcBokHTCk9QsZW/tkXjnakchPi/nUyMhPfg5PNswHH6iJPMjCg==
X-Received: by 2002:a02:1948:: with SMTP id b69mr76064747jab.55.1563833200601; 
 Mon, 22 Jul 2019 15:06:40 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id r5sm37505920iom.42.2019.07.22.15.06.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 15:06:39 -0700 (PDT)
Date: Mon, 22 Jul 2019 16:06:39 -0600
From: Rob Herring <robh@kernel.org>
To: Manish Narani <manish.narani@xilinx.com>
Subject: Re: [PATCH v2 10/11] dt-bindings: mmc: arasan: Document
 'xlnx,zynqmp-8.9a' controller
Message-ID: <20190722220639.GA24419@bogus>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
 <1561958991-21935-11-git-send-email-manish.narani@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561958991-21935-11-git-send-email-manish.narani@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_150641_863218_4FBBFE48 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, kernel@esmil.dk,
 viresh.kumar@linaro.org, linux-kernel@vger.kernel.org, tony.xie@rock-chips.com,
 philipp.tomsich@theobroma-systems.com, heiko@sntech.de,
 michal.simek@xilinx.com, linux-rockchip@lists.infradead.org,
 jolly.shah@xilinx.com, devicetree@vger.kernel.org, scott.branden@broadcom.com,
 nava.manne@xilinx.com, ayaka@soulik.info, robh+dt@kernel.org, mdf@kernel.org,
 linux-arm-kernel@lists.infradead.org, rajan.vaja@xilinx.com,
 linux-mmc@vger.kernel.org, adrian.hunter@intel.com, manish.narani@xilinx.com,
 olof@lixom.net, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon,  1 Jul 2019 10:59:50 +0530, Manish Narani wrote:
> Add documentation for 'xlnx,zynqmp-8.9a' SDHCI controller and optional
> properties followed by example.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  .../devicetree/bindings/mmc/arasan,sdhci.txt          | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
