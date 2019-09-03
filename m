Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8818FA6685
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 12:26:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=FhX0S0BBghCjgTsRq/hjsxDY8ZE5WPFwbm8O+f+j8aA=; b=SriIsHuDtbYtVJ
	o6pinS7XRMfhu6iNEPWcDyFQ4MPQ/aUOyubWis4sVAgRRbhxureyKGQtHRQDvs1Ik0SOGIrl70P+K
	rLqUQ8jlnmh5Khmy9gyM9ZCJpL2n9mDcRRp0S3OWHCVkJD+29YWHbwo15cNsAzjeBQuzcM9Xuwc92
	De2Ij20NsXL9V5OlhI+VGZ9W00GIe0pUuU4SGkCaGDzKdDPqnLFM/yBzZK1rY+OhpC0NPKIB7FeqQ
	zeKuUjvrvEMCMbqEM5U9iIGJrJAa7z3rfNSRinKa5VQZfadRvQcB43jAZHDhMzOkUan9d3usZY7cu
	EOHF41sHf5P8wSzNZ5rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i561I-00059u-Ts; Tue, 03 Sep 2019 10:26:40 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i561F-00059Y-RB
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 10:26:39 +0000
Received: by mail-wm1-x333.google.com with SMTP id r195so1304911wme.2
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2019 03:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:in-reply-to:date:cc:subject:from:to
 :message-id; bh=dYP1zyQ9/bq+0Ynwnbj9T01bNKrm29VzHbRhbnLqS7E=;
 b=FKi+mVY6T0pz4hK6a95XdNElcQW89HKXamL7zCzgY4oFD6qrBi0M8jxFRZGNJd8Thn
 eIPBQxxQqWtkbzqJC9cNFTgDK+2ksx67ykKgGCCVHPjRZ351c54NxGER93HMy8IKkE2B
 18FqCNPWL5wDuHsnwSeIavJ7C+aaxll8WTmR7jJulX+wJeU3bnKjucx42K2ifvY08qED
 2LXbj/wa+VZUgiHge8fx8+OIJvNXlVXwSuAgL/HjE2KRdAjiH+AblQhau8lPPBGoudnL
 jda8Y4mAa5cIW3/Rwj1MtYyHpCD165pSXxuJhKz/k94kI8OiFg2onbZCrscpeHBz9I1t
 EZAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:in-reply-to:date:cc
 :subject:from:to:message-id;
 bh=dYP1zyQ9/bq+0Ynwnbj9T01bNKrm29VzHbRhbnLqS7E=;
 b=BEH7S+0dAjbAy+o8lg9L2RbK354axsM8ctEhVcNFOnVsYaCGKB8qBH9XELLhgtzV/n
 7Dqa99l3DUmv3uL62z0W+z90jZxpo+dwot7HIRWfF+x0eaL3LGdQWkiWKl3ozeX8LUS7
 A8zXe9kZ724vEP/koouwozikJzRXG30D2GUaRxNnrP7cxAL82zbiZNA1vJcvPqJMVEGy
 pYYG4fAgq3fjbXmHT1M2bJuqO0PEYhirEYWsQ8Dua+HzxJqRJKYk46H07uVRU4o9kLl9
 uxyRg7FjyFsKUw/59h3EV9J5orcZuSc4oPk5U5F5j3SG0rZLKLDtReadSrx8gyz6EeH9
 uqCg==
X-Gm-Message-State: APjAAAVYDmyfysn/1Iw++DKPFIqNlwFwn7TVOiwjetTNXs7+t3UuHgvy
 p4TpIRh12dvWNrVAYK76tl63JDQ43A4=
X-Google-Smtp-Source: APXvYqwqZQwypQ4B9nzWz+DGf3sTbHUGd8RMrjWRqDnxO9a+kLCEfaRpu8wHwvpSEdpc3Ysl2nYiPg==
X-Received: by 2002:a7b:cc0f:: with SMTP id f15mr40880093wmh.39.1567506395637; 
 Tue, 03 Sep 2019 03:26:35 -0700 (PDT)
Received: from localhost (cpc83647-brig20-2-0-cust926.3-3.cable.virginm.net.
 [82.19.195.159])
 by smtp.gmail.com with ESMTPSA id f197sm34966301wme.22.2019.09.03.03.26.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Sep 2019 03:26:34 -0700 (PDT)
In-Reply-To: <CAHNYxRwKScOowbO5QFGbA_SibyqTds+X7hZ1zP4A-FuTEeqP1A@mail.gmail.com>
Date: Tue, 03 Sep 2019 11:26:33 +0100
Subject: Re: Broken suspend/resume on RK3399-based Chromebook
From: "Alex Dewar" <alex.dewar90@gmail.com>
To: "Alexandru M Stan" <amstan@chromium.org>
Message-Id: <BWQAN40QNAV4.2CDUWRNCWYSUA@lenovo-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_032637_907488_C17FBD43 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (alex.dewar90[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alex.dewar90[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Alexandru,

Thanks for your detailed response.

On Mon Aug 26, 2019 at 1:08 PM Alexandru M Stan wrote:
> Hello Alex,
>
> On Sat, Aug 24, 2019 at 2:55 AM Alex Dewar <alex.dewar90@gmail.com> wrote:
> > I've got an Asus Chromebook Flip C101PA, which is based on the Rockchip RK3399
> > SoC, and it seems like suspend and resume is broken (AFAIK it's never worked).
>
> Sounds about right. I don't think it ever worked.

I should probably say that I've only tested on fairly recent kernels, so
I guess it could have worked at some point.

>
> Another debugging tip:
> You should get one of these: https://www.sparkfun.com/products/14746
> It will let you get a serial console out of the rk3399, and you'll
> also be able to see what the EC has to say about stuff.
> How to use it: https://www.chromium.org/chromium-os/ccd
>

I'll look into this; thanks. And thanks for all the work you guys have
put into upstreaming the Chromebook code!

> Please let us know if you find anything interesting,
> Alexandru Stan (amstan)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
