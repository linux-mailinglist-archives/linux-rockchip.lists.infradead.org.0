Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A381D71A8
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 May 2020 09:20:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9KARR8tJ8FfeLD56eB69wG3nKzZtGCigaIGI9iv42Q=; b=IDOucUoxfWTbBZ
	bVe0WgSaDxk5KTW90eG9eZojmzV2xxiHHhNjeq+R9Gm0dYYng5aL6rj2tY7u0PCak4xlCFGZaW8lP
	UgqD9DuDjC9BaNttzZApA2UkL1FwiVRc6sbIwY5WWenXirwPa+x/+fuoEQeSjAtarVi3UZdOScpmn
	uCBPY9x77HI3voMSXGkkLb+RN3bS1G96FJGbOAAQNysnkjnDnAKXYugSj7W4Czn0KuGp3e/WpdBQU
	GvmRoZaQr0AVsBQOV9Ry/xzlUHFRpuprV0rAGJI8IUbWiTSip8Ah1kx0I/V2C+2cIcgg8YVTcqRAj
	BQhyPqdFlkfjJjMPRhCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaa4v-0003Fq-Cq; Mon, 18 May 2020 07:20:49 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaa4r-0003Ew-Ms
 for linux-rockchip@lists.infradead.org; Mon, 18 May 2020 07:20:46 +0000
Received: by mail-lf1-x144.google.com with SMTP id x27so6971590lfg.9
 for <linux-rockchip@lists.infradead.org>; Mon, 18 May 2020 00:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=srjDyr9S0oB/6VDYDy70mCau/zVOnj84hKg9e/vKVUc=;
 b=UmO/e8bHlXbOw6t5litf5UhEV90GLZNKTvruCwSC9H28yYSU/xOoYiclTIFgm3pdnO
 G2mJQ3KyMOKPyxPHdDN0tPhEj22mLv03EN6NEHH+nuquSeVze0Ec3cxhipC/zAyQBbvi
 fNOIkvZANckbPP2uhRAYt7O9BSVI/SbbzeYgycvK4gtnAV+iC6Q0nzy96a5/JGg8E/Ve
 /rtn1LovXJiq6BnEV32NdI6aqSsAOskxgHGNSwF3BdMJLlsPqH2SZfaJ8TJ+2e9pNE7R
 ts0J69gQDaEeKH3Q/j7cgPk+y8d2ApLd5urmJ+WiPGV+0UM70Twzx0MwclzzJc0DIJch
 Hycw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=srjDyr9S0oB/6VDYDy70mCau/zVOnj84hKg9e/vKVUc=;
 b=bLg5Z+cViGNh+y2DJTq3ulZ/E5v+IC/mma0KoEePabdvcwN47gP7igb7IpsZJLZplO
 PK18xTRDkw6J3HbBG2qhI3OydtaCWoJYuokAWG0Y40Ya/iLr2BaZozoXusa4+7cyxJ+X
 4ILY88KorfC++R9yZU+JHbzSOWA6BYvruuDmh+1//UM3gCjGTsGGNzfJ6lS9uGT/1HD7
 KhBbeMr/KMu1mnyvAVHgbjcPmG0qUUtzihb9I6qi5DE5DsM08wkXCcPVOOzu1sQHEjbO
 5mn9K5yFCmrDHqAuB8D4u4XHYIY1z6e8Vt+BZIReb63pjD40kmIbp6u/iH7joFNQfDrI
 Brvw==
X-Gm-Message-State: AOAM531mvJAsfm6cF78cGJpVU4p+X1qhGXJgZgMGnIS41MrdtyGXZuBJ
 Juou0/On7Q5R8ngcINdcg5JhSUUm+Hgld97HG79lig==
X-Google-Smtp-Source: ABdhPJzRfqaofRPumXvphn7M6BnSMfYofnElhrI84EAZ3W5otCYBNBiXOugxiFN46j+QphGtW23HA+cXFzEqTcDNw+s=
X-Received: by 2002:ac2:4823:: with SMTP id 3mr10546757lft.194.1589786443287; 
 Mon, 18 May 2020 00:20:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200512203524.7317-1-jbx6244@gmail.com>
 <20200512203524.7317-2-jbx6244@gmail.com>
In-Reply-To: <20200512203524.7317-2-jbx6244@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 May 2020 09:20:32 +0200
Message-ID: <CACRpkdYrDHNp7esSYw9y7CQoZ1aZojWkhAU_MG4uvmk7nVJbOQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: rockchip: update example
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_002045_748783_4E8F3811 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 10:35 PM Johan Jonker <jbx6244@gmail.com> wrote:

> The Rockchip dtsi and dts files have been bulk-converted for the
> remaining raw gpio numbers into their descriptive counterparts and
> also got rid of the unhelpful RK_FUNC_x -> x and RK_GPIOx -> x
> mappings, so update the example as well.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

This patch applied to the pinctrl tree.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
