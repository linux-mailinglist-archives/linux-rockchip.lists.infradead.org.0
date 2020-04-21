Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 704011B1C35
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Apr 2020 04:59:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWPJPtiDnEtx6LDBpkRli6/keD9YtpEXG9rb6I0/FOY=; b=onyqdYVoZhIAlu
	tUyCV1NKLX6y/6N0+H6XAqoGYXwR/+tIR5XXcvSR78ZunIaP2rVHxlxaRnin5DUqnpJ8hjpZmPsb9
	LFFZ/QSYJ1yuxKSUcqWgzW04EQk4DWPlzzRurWvoU9o4gz870174Sq5eNEMdWJijUr+S/tcKa0yPj
	7DcapYNhI7KIK8xDC9CzjfFQy/7CkLim+DC2O7aN4m5IADNpmdzXl6awwUke6/vDxdLFCSz5kYBeY
	CcYhSkyQ7qw74Zkxuu7+cVOGXRLVWCtF3oPVU46y2epyPFbrJkozw9GbVhZOd6KbJ/af29DqDlokC
	K2ZurdTm2C5ssxTn1VXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQj8a-0001eA-Ra; Tue, 21 Apr 2020 02:59:52 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQj8X-0001cz-A2
 for linux-rockchip@lists.infradead.org; Tue, 21 Apr 2020 02:59:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id C6B722A11CD
Message-ID: <2d1da0b9d857c5607c989be85a04c9d7d9d19b38.camel@collabora.com>
Subject: Re: [PATCH v4] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
Date: Mon, 20 Apr 2020 23:59:33 -0300
In-Reply-To: <12f6d7cf-6af6-4f54-3188-65e73b703a72@gmail.com>
References: <20200326191343.1989-1-ezequiel@collabora.com>
 <12f6d7cf-6af6-4f54-3188-65e73b703a72@gmail.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_195949_480962_41CA1211 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh@kernel.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hey Johan,

On Mon, 2020-04-20 at 15:33 +0200, Johan Jonker wrote:
> Hi Heiko,
> 
> This patch was applied by the media people Hans and Ezequil without note
> and test I think.
> 

I did test it, but I guess something felt thru the cracks.
If you'd be kind enough to submit a patch, that would be lovely.

Thanks!
Ezequiel

> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> 
> Errors for example:
> 
>   DTC     arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml
>   CHECK   arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml
> arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
> interrupts: [[0, 9, 4]] is too short
> arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
> interrupt-names: ['vdpu'] is too short
> arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: video-codec@ff350000:
> interrupt-names:0: 'vepu' was expected
> 
> See:
> https://lore.kernel.org/lkml/20200403124316.5445-1-jbx6244@gmail.com/
> 
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2
> +
> +  interrupt-names:
> +    oneOf:
> +      - const: vdpu
> +      - items:
> +        - const: vepu
> +        - const: vdpu
> 
> Vs.:
> 
> 
> +  interrupts:
> +    maxItems: 2
> +
> +  interrupt-names:
> +    items:
> +      - const: vepu
> +      - const: vdpu



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
