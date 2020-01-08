Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C9B1341DD
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Jan 2020 13:38:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LaZIpbLnrRBSx60CpbAEUJ6nKNJZKAABA489aqmsnDg=; b=Xfm0fAqjxoqzNB
	yCXY9hEONtNJYM7l4sRkaNSIfOv9JeZq7tQnBZPKzf3sKzxX/5JUMgGPG6Dnz906SbzrKyfaCjk95
	PcNR3kHBv1JSY+ai1hx0Ejx3/Mz9sn43iiJls2B/v0fvEPtGem1UA7xghmcU6Q9EdeL+Fq6nLM6XX
	CqrKmwUfxEG7UDqvkF/H+Vw7xhU1lf/1PiB5GHVGSxt/fr6V3LNjAcDVSSh79K3y0yyRuhUsoAOzr
	J2PmSQFRxzAIJSBGUBRfdT6XGnqxjwZAVCHxnFnwE9fxLa8oOm0nUqp67sqmsJf4l61cWnYcLIu/z
	OOzuPrJziT6u0pM/15Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipAbH-00027M-RE; Wed, 08 Jan 2020 12:38:15 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipAbE-000268-HW; Wed, 08 Jan 2020 12:38:13 +0000
Received: by mail-ed1-x544.google.com with SMTP id v28so2384584edw.12;
 Wed, 08 Jan 2020 04:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RotMCjOJKktSIUBCGAb4BBJvwMzxDTEukuKk1C8nR/Y=;
 b=DVTb0EFtmqEPjuV03pnzZK8BsOoSGErBVKLIgk8UCu08OyrkYyp+HrCskvsX5sy5Ff
 7dgC90WFdqalh7qU8HwYisvMIeBkmy+stiyz7LUL0LjF2/5fICa+Z4jUYnRAwAV4kksQ
 7dZZUA2bit+LnZ4BIwweatxdmsnogHTuTJ2y1kqqYR2/oD1hUVcpiVL6nExK6EfOAQIE
 bqcVrcApy0/mju2Mt+SP/RFG4is3ocgdJpHtYhpE74dGn55SZ2FCKUSQmnx5qLeY5PyP
 qt9S8KPXnqjmbCkZ7ZHnvoc+ZArLCNgibMc4uWYw8FFqFFLTlLcbfckZ9XhF/1HEvSog
 eEMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RotMCjOJKktSIUBCGAb4BBJvwMzxDTEukuKk1C8nR/Y=;
 b=OnnWk4ZYJ42wnJX0Ylbr4JYbzIVZfG8jrFq86m/MomSXuIUUNO7Q2yVixX2B6jTx1D
 MRwxQd2YMXinAh2vmdk26yoPb7QEcWobfvjfNklZbJ3JW1IYCGUhxludH8t4QT3hlKU4
 3M683exlNtbNtpbvkUXisZQhdpoHYHwsHj0ds0DWvK1fc6p03bSYil9lNgxMj7tpSqYg
 V6yTZBOJUzT1SZRXDJyNNsIie1CbdzrZ0/nHHmwzt3vsm1AXbjPEW+Uc10cOC2X+z8N6
 IYmSEJ/lYV7y8Hwdlenf/XrnmDzks5oFtSWTHFuxFE7+T2VPr7NH2AAXDaYqCtSCoWZo
 LaAQ==
X-Gm-Message-State: APjAAAUDJYh5vv5HdnEhoI0xZpyI62g7VLX6SfEjP8an8PuKFG5k2udG
 DezKsnEVjM3PpjkaegS4LS1HC/LQCixG3P3EKVU=
X-Google-Smtp-Source: APXvYqzi0WPsidDDmVj1R0p4gUv6jfBMcq5h5l5TD4QO3F5rD/GE1j0AN/0+zT53es3eTRwo2dDerj4WmIdMbbc4SpY=
X-Received: by 2002:a17:906:1a50:: with SMTP id
 j16mr4721042ejf.106.1578487090894; 
 Wed, 08 Jan 2020 04:38:10 -0800 (PST)
MIME-Version: 1.0
References: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
 <20200107230626.885451-2-martin.blumenstingl@googlemail.com>
 <a85f2063-f412-9762-58d1-47fdffb24af9@arm.com>
In-Reply-To: <a85f2063-f412-9762-58d1-47fdffb24af9@arm.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 8 Jan 2020 13:38:00 +0100
Message-ID: <CAFBinCBYrNC+ULV6Y=77qogowkDZwM+H0bxOqPN4sT6q3krGfw@mail.gmail.com>
Subject: Re: [PATCH RFT v1 1/3] drm/panfrost: enable devfreq based the
 "operating-points-v2" property
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_043812_580842_1943D317 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, airlied@linux.ie,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 steven.price@arm.com, linux-rockchip@lists.infradead.org, daniel@ffwll.ch,
 linux-amlogic@lists.infradead.org, alyssa@rosenzweig.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Robin,

On Wed, Jan 8, 2020 at 12:18 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 07/01/2020 11:06 pm, Martin Blumenstingl wrote:
> > Decouple the check to see whether we want to enable devfreq for the GPU
> > from dev_pm_opp_set_regulators(). This is preparation work for adding
> > back support for regulator control (which means we need to call
> > dev_pm_opp_set_regulators() before dev_pm_opp_of_add_table(), which
> > means having a check for "is devfreq enabled" that is not tied to
> > dev_pm_opp_of_add_table() makes things easier).
>
> Hmm, what about cases like the SCMI DVFS protocol where the OPPs are
> dynamically discovered rather than statically defined in DT?
where can I find such an example (Amlogic SoCs use SCPI instead of
SCMI, so I don't think that I have any board with SCMI support) or
some documentation?
(I could only find SCPI clock and CPU DVFS implementations, but no
generic "OPPs for any device" implementation)


Martin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
