Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D723B13D8CE
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Jan 2020 12:17:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o03PgZ8fCmfJG8pPG501XqonGXZ3tqBweFB2gWTusnA=; b=EJdFKzwAkgQDKQ
	G4UqXSd+TBDjpphPj5VWYAfMd+CALTbUaiicPo/57N88U6pk6uVr+pleTrAk3GqVb5shORMmzno8G
	kFyP2MQQjgYmwY1WXqiKQ71FId5FJQ/RE6H88fFqYmA9QPDKECzcAbv244U5op05ASV6djJzydR78
	XScrU3tD9WiTNNMpe4ET45xIKjtukEZ1/dzUKfIpCEosw0f2/lslMXAVVxTHj7cIJwps2Z00Y2Z2z
	Q4NHUjMVXthZmXFzMMKw2xW6ILc58WRUawAk5aPOW9i2LdDLRB8gz+1JXNLHN5Fq3isqkksf5lkSL
	LM6tAZNLpdvz6FDWFTVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is39K-0000dD-C7; Thu, 16 Jan 2020 11:17:18 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is39D-0000cA-Ez
 for linux-rockchip@lists.infradead.org; Thu, 16 Jan 2020 11:17:16 +0000
Received: by mail-ua1-x943.google.com with SMTP id 59so7483673uap.12
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Jan 2020 03:17:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F7tUdno7ArtPSiaOPdMNn5wVN9V2qtibzn63/OmNwzM=;
 b=lwcdtRWLk0imKl7E0r3n6TJW8xeDU1FBZjrxdwbB1j1Ol8VLI6md87iF6Ei32CqstB
 iZsxa6IJPvBFh4/KZIDh7uRZ4kCTldU8Hs1BMoPEFCwDTo7QdO9PKkKKeMCczAi+zG/4
 JZfYXGg313YN4TZwuOTHONOstMiYv8zbow0CFVohUQbrYitLoSQqIkeDcuxGp6qNSXRF
 MSkysZR6XwblHa8eMmPSQT/qJd8xv8W9O4E2ppMNt4Lo0lJZCGfmkzvlu2IAtDMnEnbB
 1QjcmJa6xjbZVSVMx8kwvXsDZZBH7G6592G8of/U/0t0mCjvPQm1g4udNBlpI6gURr5r
 am4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F7tUdno7ArtPSiaOPdMNn5wVN9V2qtibzn63/OmNwzM=;
 b=IDxnFk/wy950UR8Yr7NMpI6XZzJqiUWhCXqulxyhkOSLsGTMzmAhalPQac0wFdpgqa
 15lugLqkPaK2lRSf1SAatvn+jDaa3cx3wOlqcl1LR9htsPtyrZ4sO0q9u4JBPplAUf2R
 4J3G/CgPUJ3M8duT36hwFBJKUk4LGNLHgYblQH7xCXT8eL3/VcUrfwA1Ben0rKG8DflG
 VS+7LpnlsBrgHZ8UuM69Gq+n5B/HatUWxju0rlUcdi3vRZ9G5K+Nk/SAM5hi5SKJ7a24
 VM2F9bHFHU43kBBU4y1vehwTZbJpyCFdToeze3ixRNGIlq5LCBpK8mWlvLnzWacYFNTQ
 6ywA==
X-Gm-Message-State: APjAAAXvn93gRHNojW0KYnGHOD7PalikL2T7KywW9M2W/bHB7UWlY8uZ
 wvQ/XoWNgXg7Rfpg8BOx/+MkQfzSnzNBzPPYooHsHw==
X-Google-Smtp-Source: APXvYqyiD7on53LJXj+IvnXLqg0ezI6WrramGC7O26YFNv+/TCtHx+KoDKnYfKLOvap+43EPQJV5R5WFI/gCOGKBRMA=
X-Received: by 2002:ab0:20a:: with SMTP id 10mr17143795uas.19.1579173428886;
 Thu, 16 Jan 2020 03:17:08 -0800 (PST)
MIME-Version: 1.0
References: <20191219145843.3823-1-jbx6244@gmail.com>
 <20191228093059.2817-1-jbx6244@gmail.com>
 <20200104215524.GA28188@bogus>
In-Reply-To: <20200104215524.GA28188@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 16 Jan 2020 12:16:32 +0100
Message-ID: <CAPDyKFp5BvA7tKpBUh-bpn5X4xvg8b9HuMO7+fZVJEp78=ToRw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: remove identical phrase in
 disable-wp text
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_031711_522273_FA9E6FB0 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 4 Jan 2020 at 22:55, Rob Herring <robh@kernel.org> wrote:
>
> On Sat, 28 Dec 2019 10:30:58 +0100, Johan Jonker wrote:
> > There are two identical phrases in the disable-wp text,
> > so remove one of them.
> >
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
>
> Applied, thanks.
>
> Rob

Rob,

Normally I pick up the DT doc changes for mmc whenever you have acked
them (at least more non-trivial changes). I regards to the
mmc-controller.yaml file, I have no queued changes in my tree for this
cycle so this should be fine in regards to conflicts.

Going forward, do you prefer to pick the DT doc changes for mmc, or
can I consider this as a single occasion thingy?

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
