Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3546112E95
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Dec 2019 16:36:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsxSucnsMZbU0qFKpT++5IWGyWNz0W2sNOka+79Bi9M=; b=PdmaoDrMJ8eK5K
	vbJBphLWMkmNqn6xOxCu0+w3vAG0W0aYlxhXWuuScs8tf4docc1Kd/+U3+1syoBe1BZ1UN43+hrnO
	TsLKSD31A9NmDR0PIDActypScaWjIS62fdz/RIHy9OZrdCVp047NOdsvUbjW0D217IjGOTGR6jiTm
	NedZUf8By80jbASRQn4hrPrMV2k2lTLl5he4VPc1cuzps8bdkq7ugFHYoB56rkSoVJGnoaatmkwz5
	TlETWf/9GXxDun2tbWFQ1kBADI+E+Surs3HFGk/MMzRC7xOLdrnIKAzI1Oz1HkCBKf4J1FQwfBsRl
	nJ58Ji96m6frmFgl0+oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWhg-0005vu-Dt; Wed, 04 Dec 2019 15:36:36 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWhd-0005va-0v
 for linux-rockchip@lists.infradead.org; Wed, 04 Dec 2019 15:36:34 +0000
Received: by mail-qt1-x843.google.com with SMTP id 38so91329qtb.13
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Dec 2019 07:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YNh/gbbmWRgHkbHGfxQ5xOBFieH2xGvQqMmiNQHDLT0=;
 b=jukLGhV+8R8k8f29WiBkYubuL4CzavtAmcHjIr6vtqBVZ3bsQjy4hutLuInhLUjh9u
 8CJsCgPKD5jJeijeL+JQC6JCpIwI9MbHAeKyjBlVh006dy30WghM58/EPkGH0Be06Fid
 b/7qWEf27WZkxmQSxXxHpGv9ekHgX1KorhWzTn5obmfKfwrKxbkDjMnNNactM8o7hP4x
 eAAs8fW9J8DgYlY8tejeV7r7p9H6ZeNoQhIg8dXoBdGk3KG7K+ODsEY57kyH/TG9qrD2
 8MXPdk9zNa9sgkn5Jw5IfnoZui4bUrlRkcnWsbEncO+au9CHmgQOkTrUIWoL78+j3O/Y
 OOFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YNh/gbbmWRgHkbHGfxQ5xOBFieH2xGvQqMmiNQHDLT0=;
 b=o7+Jww+RZIJzg7RvKEyBokqz+Ir81PLuvThgkPsOdwjdyQyJFMWpz7gz6YiOUQdI3R
 FyuAazEpJr2GJeVEqHswbzOJVCVTcpX6bs4lr5c+WFZGjo0+d4fh69ZGO3M9VW52288Z
 KBHVtTKJy+g95XiuqpbGZyngMMclbTpU8iFNhWsyMls/W6jYg5ELEWC/VxPfm7IA7az8
 gHYl9ibMioJRsB5H9R4dqSc8TZEj0aT1sic8lq+DVv25RhzfBpSfKC1w0eddXZFNeB/Z
 uvFfcsAOmeuABxSBGd6+LIqsSMGc9bYwyjUuGxuJN9ZBh5H/54SoFwmlUTMbI6pspOQH
 t4pA==
X-Gm-Message-State: APjAAAVZfXdAiMarEX5EGVFeyQ8vNjNAXA1IC3E3MiKHYmYtfDdQ/TV4
 n38GtM0L/A84GN3AO7k05xle+agKxeF01uXiEPTAPg==
X-Google-Smtp-Source: APXvYqzUpz7kRayiI1Tw/Pfmt8JgMzT5TG0GjLQ638rS/KA5BxIubo5kP0KfMWuC/foYdyXWCMO42hh+Jpms1/xSkSI=
X-Received: by 2002:ac8:1494:: with SMTP id l20mr3241584qtj.356.1575473791024; 
 Wed, 04 Dec 2019 07:36:31 -0800 (PST)
MIME-Version: 1.0
References: <20191204103940.22050-1-miquel.raynal@bootlin.com>
In-Reply-To: <20191204103940.22050-1-miquel.raynal@bootlin.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 4 Dec 2019 10:36:19 -0500
Message-ID: <CAMdYzYrEmTqvJ6m54EADxLDf70duCtdz3pesV3EZmt67=cbs5g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Describe PX30 caches
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_073633_090448_3C603F48 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 5:40 AM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> PX30 SoCs feature 4 Cortex-A35 CPUs with each of them a L1 data and
> instruction cache. Both are 32kiB wide (PX30 TRM) and made of 64-bit
> lines (ARM Cortex-A35 manual). I-cache is 2-way set associative (ARM
> Cortex-A35 manual), D-cache is 4-way set associative (ARM
> Cortex-A35manual).
>
> An L2 cache is placed after these 4 L1 caches (PX30 TRM), is 256kiB
> wide (PX30 TRM) and made of 64-bit lines (ARM Cortex-A35 manual) and
> is 8-way set associative (ARM Cortex-A35 manual).
>
> Describe all of them in the PX30 DTSI.
>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 35 ++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 1fd12bd09e83..0e10a224a84b 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -48,6 +48,13 @@
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>                         dynamic-power-coefficient = <90>;
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <256>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l2>;

If the i-cache is 2-way associative and the d-cache is 4-way, wouldn't
that mean these two values are backwards?

>                 };
>
>                 cpu1: cpu@1 {
> @@ -60,6 +67,13 @@
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>                         dynamic-power-coefficient = <90>;
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <256>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l2>;
>                 };
>
>                 cpu2: cpu@2 {
> @@ -72,6 +86,13 @@
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>                         dynamic-power-coefficient = <90>;
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <256>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l2>;
>                 };
>
>                 cpu3: cpu@3 {
> @@ -84,6 +105,13 @@
>                         cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>                         dynamic-power-coefficient = <90>;
>                         operating-points-v2 = <&cpu0_opp_table>;
> +                       i-cache-size = <0x8000>;
> +                       i-cache-line-size = <64>;
> +                       i-cache-sets = <256>;
> +                       d-cache-size = <0x8000>;
> +                       d-cache-line-size = <64>;
> +                       d-cache-sets = <128>;
> +                       next-level-cache = <&l2>;
>                 };
>
>                 idle-states {
> @@ -107,6 +135,13 @@
>                                 min-residency-us = <2000>;
>                         };
>                 };
> +
> +               l2: l2-cache {
> +                       compatible = "cache";
> +                       cache-size = <0x40000>;
> +                       cache-line-size = <64>;
> +                       cache-sets = <512>;
> +               };
>         };
>
>         cpu0_opp_table: cpu0-opp-table {
> --
> 2.20.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
