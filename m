Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E27F3EC75F
	for <lists+linux-rockchip@lfdr.de>; Fri,  1 Nov 2019 18:19:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yxSnc6CuXj+JsFmKJk9MKKMccw3/27Jfp3/rofag/ok=; b=eAT+BQQyU6FmhX
	va5sm8mkEiOcdJ5/UaWmxTJemi+hhR2IXdCtDyRZdeVX967FMNqw2N5IdWO5H/cpPgU62UH/H44Ij
	cpXDrdaGOyTYFpwNyehEZcm0wb4TaGONy6QLemOOZaW0g2j9aKL8Xu+wg9uhMBg9vBo0fyziMGkvt
	rD61KR7b98TfsZFtgsYfGoHcvCSTjbp+IgiIqyOez1OX0HaUmKLFSy+8BRtWVBMCZ5e+iWjAFqJIO
	NEYpnqGbGEAaj7rksQjhsdYmWemPvf1TixsIogSmLIUqYe4TtaKLbOI6FdtKLtM8xPMWSKTUu3DkO
	tMELYE+xADSCh7HKCf7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQaZe-0005gO-O9; Fri, 01 Nov 2019 17:18:58 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQaZW-0005as-LY
 for linux-rockchip@lists.infradead.org; Fri, 01 Nov 2019 17:18:53 +0000
Received: by mail-io1-xd42.google.com with SMTP id c11so11632482iom.10
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Nov 2019 10:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gsPQETmgTl7NAIWAe0p+amO0Xpuf42Sg5sA03PkK6fA=;
 b=DHuiYqjtLEwqyLc8KBlcA9F87Trr8KlR7lQJupob2JvW1qt4IaBr8dS/t93oO8kXMx
 rBldwNzx5Bfy/DNuhhr5XthFjVwEy1vHvByiPxaQDAzxGzfTbhAaVl0tuYACCY0WONO3
 jXIPHzTezjByu4wkcAQNK+Yfgf0uGL8aewFnM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gsPQETmgTl7NAIWAe0p+amO0Xpuf42Sg5sA03PkK6fA=;
 b=k4dRC56gKIliZtFOO55+umJsfMIzNJJ0YTCOZ9m08RIt3ugjG1g2VHpzNGqwh5N4wK
 NXk8yiIXtVVGq8RxeZAqAtfEPmFgSGpdiXSjeaGQK7i5ZlnJ2vRM+0p4c/Qv+7nzOUMO
 5V1efyCW2uafMdYYrXaAldO/Fq0/9dAv0TF6qKjQM7J5rcLYfEJagOLQ8APYjTeAG0Ka
 k5iL0KjNkpE7Q3Qj7q7w8KMloVfHzqPKuD90M97P8NmIWTmhkx773A/m4o5Gsd674gtY
 0Q4iJTSoEqb6ffcIKgtRR5o7VYLI164NkCtvJz1G/ytMbVVKVnYJ3B0xbAcM9esQk0J9
 1Mlw==
X-Gm-Message-State: APjAAAVLqnkLjeWyfAl85HdFQNBNgIJsTisIpnfGzZk4kzSZfVNyelQ+
 2kZ4RLXxxtagF+PhCDdslvI4rTBCrgZVkrW87IJ+0Q==
X-Google-Smtp-Source: APXvYqzXiC7EL678+PXm0OrA280csP8J0SZXUGEUAnJ/ik++qiGdw5SRlWYaLOt1/bpVHe7UCsf7VcAlx4eKOCsSzv8=
X-Received: by 2002:a5d:8d95:: with SMTP id b21mr2294351ioj.61.1572628729457; 
 Fri, 01 Nov 2019 10:18:49 -0700 (PDT)
MIME-Version: 1.0
References: <075b3fa6-dab7-5fec-df68-b53f32bf061b@fivetechno.de>
In-Reply-To: <075b3fa6-dab7-5fec-df68-b53f32bf061b@fivetechno.de>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 1 Nov 2019 22:48:38 +0530
Message-ID: <CAMty3ZDSK4mJk0bkQ_e3m1=Ar+NnGZS7q8zFYJJHtZY3HeBkfw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
To: Markus Reichl <m.reichl@fivetechno.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_101851_648572_FB6FDB14 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, Nov 1, 2019 at 10:24 PM Markus Reichl <m.reichl@fivetechno.de> wrote:
>
> For rk3399-roc-pc is a mezzanine board available that carries M.2 and
> POE interfaces. Use it with a separate dts.

Thanks for the patch. Indeed have an impression to go this via overlay
rather than a separate dts since it is HAT for base board, does it
make sense? or is this the way it is handling in rockchip dts files?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
