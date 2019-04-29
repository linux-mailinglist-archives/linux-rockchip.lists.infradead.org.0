Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 535D5E878
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Apr 2019 19:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ws4M9ve+okGLsZ8BMK3SsN3IpHBd+/iqOYObPsquTRA=; b=D1u6Z+6le1tpFL
	42/mtU5lF0TsiwBJ6s4iZIFxFIgPnFUGUL4blWnyVdiQIIb/viasFP5k1s/rfB15l9SO9aY26Ruh3
	8z+YiikoSBqJRTGKljankJ1nr74UzhgzRCAyjn27tTMTsWpLI9Cq12WsH2ah5ky8PafrpVjYgUFhZ
	97rltHC0ulZBsjYNTEuGKylJBSJkjJIbxS3Zkf7HQ22U8gmWGQ7BLtaylP3Wp8pLPeXuypb8qJYF5
	wKoSL5uQeY/zAopTeOhZ1Z+xAKIzuWVXKM2kWZ371fP5+SxqTUgHTx4Mqax5T2XOhWgrFFMt2nfUZ
	RvFTumMWYBb07Rz/fCAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9of-0008U5-NK; Mon, 29 Apr 2019 17:11:45 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9lK-0003Pf-SS
 for linux-rockchip@lists.infradead.org; Mon, 29 Apr 2019 17:08:48 +0000
Received: by mail-lf1-x141.google.com with SMTP id h126so8595701lfh.4
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 10:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6/qit5vhsKsOhS3puXN0ZuQiaarztOsHnZ94NO25DvU=;
 b=jduis7s7XVYcqC7bsRDJn6WuitMgsbmzP6xnA1V3YlB16Sp3p84NnfaADCbNvbw80R
 1pIxfOci9Ftfm536TYR1cIDiaNgXEbwWjMw27DwA+U+v/yTPoPbt5oAAFtysufkkl1Tw
 4dktnnAlCwV4qyv6RsE0QtXscYyIQBvOGgsgI8Qps7WFOdL7aXpdtPK0rEEi/v2lPbKQ
 O6GRiZAMB5clBhm8IQsOccbucT9jqHvgTCctEIL6qYOVw8BFfYQn2sLOHcYBPp8LE4NB
 g7rx230O5GylGs7jCJQEmwEKPfuwv+SV6Aye4K1kA1p2hACpQ5cnEXPZW00B2BQ+eDUf
 Mpgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6/qit5vhsKsOhS3puXN0ZuQiaarztOsHnZ94NO25DvU=;
 b=U8btJOg8x2tGCfREH5TZKdOtdf9/YtmMDxUYDBzyOh+0S84iSChWoymPxZIp6SYKta
 jYy+XrCUCEbJHZdcthHaYHs6AlHl6/6OKLWYTQyuwQtgEN+vIsJDk4EuDuE4P+la+vL8
 TUjsZDePcJXBrfakIpNYcMqW69fWm3S50UgOGmjFWHQDprGBS3XsEhd4FzXKib9pIIsD
 2H7xaida33mT9mTWP1lXozhvJzkj5cN/k4gGnfxKoJU1QCgGFpdfdhIuLC9rnAuv/JkM
 jIKSUggOi90WI99lI0Qo2sAXAnjornoNJibXwrNFHMZsHWowU2yzZAUQuFitC1x5+vVe
 8qqQ==
X-Gm-Message-State: APjAAAVQsJd8/149onXCpvyCnH3Rz/w28IYjlp+91GJj1n2yNKDx1xfF
 Q0jI+IKaF5GRE9CVLILowLwpxA==
X-Google-Smtp-Source: APXvYqxrJZ1fp30TumvbFTarxn7TLA98ToE//I3yhSVBJxD/yHE434Mt3o0dZVjCll+TtZGYuI0Kiw==
X-Received: by 2002:a19:4f19:: with SMTP id d25mr23636578lfb.124.1556557697270; 
 Mon, 29 Apr 2019 10:08:17 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id r26sm4739591lfa.62.2019.04.29.10.08.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:15 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:56:11 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 3/5] Rockchip driver updates for 5.2
Message-ID: <20190429165611.kziga6dzsgqi6sib@localhost>
References: <3379363.gjmLGbHmEH@phil>
 <1986142.cTRxNIxTfU@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1986142.cTRxNIxTfU@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_100819_513904_DFA9F325 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 07:58:37PM +0200, Heiko Stuebner wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-drivers-1
> 
> for you to fetch changes up to bbdc00a7de24cc90315b1775fb74841373fe12f7:
> 
>   soc: rockchip: Set the proper PWM for rk3288 (2019-04-11 13:40:32 +0200)
> 
> ----------------------------------------------------------------
> Select correct pwm solution by default.
> 
> ----------------------------------------------------------------
> Douglas Anderson (1):
>       soc: rockchip: Set the proper PWM for rk3288

Merged, thanks!


-Olof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
