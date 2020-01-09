Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7400D135F45
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 18:27:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vu+ExuMCdKuG4dHZ+KMG/0qxA++lN6+BxOIoqAP4OTo=; b=aFn/NguLXoYkRz
	W2HMEZ807qYIeux9JLinq0fYaU0a41VRAnNUc7x2+KjO9UauHg4CRBpr7mT5STCrGn/tCj+9abrC3
	nNmQj6oXwUHVc71veZpRErsQKMHS3nAsIxHYaR1VkrLudm7Tw99hJsGmqSmscJyPDXi9GMrWD8Si7
	h9unjPywqc9XdTe6sHMGBh3dN2R/v+1nlU2ayIkji55G67MYdTkzoZG/hKRFwMsKDU7EJ+tb+/rKG
	wDki9y4/B09Qn19qPhAkSUwqMXxBvNGwV2wXwVKq+n97AG/Eb3mmKu1VO6jCd046mImo0vgu3ohvF
	wT9911BUOO0sWsH99bzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipbaf-0001Lg-Nz; Thu, 09 Jan 2020 17:27:25 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipbad-0001LJ-FD; Thu, 09 Jan 2020 17:27:24 +0000
Received: by mail-ed1-x544.google.com with SMTP id m8so6265223edi.13;
 Thu, 09 Jan 2020 09:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NFFo4lYAoR+ztQi+bc+shgpxvHEpz1hycdVXq2pda/E=;
 b=Bq+zDCp8utnqC9vMcJB/9oXqT1bWMXHa9K3cjrXkVmVYBP/ZIdLLfGDxDgPktAJpPc
 uDYgQR6bCFp8fdwsIvv0sWXgr9FBuzJqreq7T9hmyWCwHAr2vcfVPJCCEUp2NECox+fi
 zmyZQ2zO+D8GV6q5/rDZdUGfjWEu3R7OzVs5gFMShCfE5zEHEqMcqaJCnCEFXBNLW0+i
 NjJvOr1EXZymyaujysT4RdeA6n0A+SRdv2jVrVR4+eqCNYkrSNwMW8weozYmXO+uiFCL
 8IomC0iUekQ+Rr41GSxJd9EGJcJ7cgy3qRopzDCAknRfsyjo1/pb+Cj7/h5dOiOqQAbp
 EfeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NFFo4lYAoR+ztQi+bc+shgpxvHEpz1hycdVXq2pda/E=;
 b=da6LAGq6chc0kYNyOWgcEW3Jmyp4gyAY1AjotG4SVhPykZrBSEwV4uH13LGGFqNlE4
 XJdekgLLMSzMZQ+3I4NhZZiRLsUJ0fl5F5FmPY5RZ5z1Xivn67rSRDLy/LxtkvPYJTid
 6RTU9c7lrAZPgv75MlwEKvZcQwoDWCpDJ7M5+ajkpXBuIloAGTG+Ua+2cOow8SVjRDLH
 EDTWPX8LbrBQzSsffdY8HMKdIH2G3qNlMQsRVYGuGUcIgOLusSmgtB8qrSKbpO+ZsU59
 R4C4byZSDz+iyyBnn9elYTck/1uWm2Fx0HHb3DdZfm4TzfOkuOyYy4W7sQlvIKw2uQ8Q
 5NVA==
X-Gm-Message-State: APjAAAXsJ4VQt0YdyHW3A5gB8i5jb5rSzAJdO63R6TlfF7DRfnUviYK0
 Kun2Sw3O7Aq9watGG9CJ1JRf8LYjOGlle9OT160=
X-Google-Smtp-Source: APXvYqxns+YYQrgWQriAT/C78R+M4y26/fH9IfQcErryWfYvFhFx6Chl+31zO8yU40ApwcokfeGqoyXjdVewMru6CFg=
X-Received: by 2002:a50:fb96:: with SMTP id e22mr12240111edq.18.1578590841789; 
 Thu, 09 Jan 2020 09:27:21 -0800 (PST)
MIME-Version: 1.0
References: <20200107230626.885451-1-martin.blumenstingl@googlemail.com>
 <20200107230626.885451-4-martin.blumenstingl@googlemail.com>
 <2ceffe46-57a8-79a8-2c41-d04b227d3792@arm.com>
In-Reply-To: <2ceffe46-57a8-79a8-2c41-d04b227d3792@arm.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 9 Jan 2020 18:27:11 +0100
Message-ID: <CAFBinCD7o-q-i66zZhOro1DanKAfG-8obQtzxxD==xOwsy_d6A@mail.gmail.com>
Subject: Re: [PATCH RFT v1 3/3] drm/panfrost: Use the mali-supply regulator
 for control again
To: Steven Price <steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_092723_512103_0E2374C4 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org,
 robin.murphy@arm.com, alyssa@rosenzweig.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Jan 9, 2020 at 12:31 PM Steven Price <steven.price@arm.com> wrote:
>
> On 07/01/2020 23:06, Martin Blumenstingl wrote:
> > dev_pm_opp_set_rate() needs a reference to the regulator which should be
> > updated when updating the GPU frequency. The name of the regulator has
> > to be passed at initialization-time using dev_pm_opp_set_regulators().
> > Add the call to dev_pm_opp_set_regulators() so dev_pm_opp_set_rate()
> > will update the GPU regulator when updating the frequency (just like
> > we did this manually before when we open-coded dev_pm_opp_set_rate()).
>
> This patch causes a warning from debugfs on my firefly (RK3288) board:
>
> debugfs: Directory 'ffa30000.gpu-mali' with parent 'vdd_gpu' already
> present!
>
> So it looks like the regulator is being added twice - but I haven't
> investigated further.
I *think* it's because the regulator is already fetched by the
panfrost driver itself to enable it
(the devfreq code currently does not support enabling the regulator,
it can only control the voltage)

I'm not sure what to do about this though

[...]
> >       ret = dev_pm_opp_of_add_table(dev);
> > -     if (ret)
> > +     if (ret) {
> > +             dev_pm_opp_put_regulators(pfdev->devfreq.regulators_opp_table);
>
> If we don't have a regulator then regulators_opp_table will be NULL and
> sadly dev_pm_opp_put_regulators() doesn't handle a NULL argument. The
> same applies to the two below calls obviously.
good catch, thank you!
are you happy with the general approach here or do you think that
dev_pm_opp_set_regulators is the wrong way to go (for whatever
reason)?


Martin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
