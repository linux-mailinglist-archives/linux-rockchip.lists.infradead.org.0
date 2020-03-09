Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90AE17D973
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Mar 2020 07:55:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yr2z8jIEO98jpRVCFiOc8f203szB9EA7OlWtNCqBkx8=; b=IUR8ivChKo2xll
	jun8RRe6t2oKXttIViIIuFdce+9Xy6roxwec+izbhzWmHN6P1f3yEFUNX/Lcn1zOkhwvBkZAETJqq
	RP/gW2sXsllK74F8I5zBTzR+nPYx02r3GixGQrQos8HR9zzv7+gJwHaxtWXvshMB3N2WIbqDF6Uf5
	EG1/d8gicXy08u6ocVulpk0UoCVHBCweZ6/FPMqFzIUW++CJc+V3KHKmm75kfz6pVWKwZmJae+3PI
	Kd2SmRpKAxAc/vpSffcU+1C2CvekLhm/zZslznB1xrnH6CDbY7nJd7XwsK0RuJ7RVRVDc2h0h1tZD
	Eu3ThrerNsG60rYp2nJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBCK2-0005Pq-De; Mon, 09 Mar 2020 06:55:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCJz-0005PI-An; Mon, 09 Mar 2020 06:55:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id n15so9531999wrw.13;
 Sun, 08 Mar 2020 23:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dm/e7fVVkyUEJNRr/yTEUzT0xvOhNYWpgvQvhHUhF68=;
 b=s3VbLfphTDUMOj5VgEB+bJaxg9XNGT89jpF7/fzn4h2lZjtBN2yMNm+e2Mk1q3vVbz
 2hu8irwSULuWR6uM43Wv53RBYq6D8D2BBoG3YD6ovjl857cnhxhwjSTQ0PQTELIqogKQ
 /yyn6SfIz769wKub7xSny0zSlNeUbAq7qpI5RPwFPuVZ4IGqm67Sdov8lAwKUL+koX53
 5kYAbSbYqLJrm/u2YaUvrq24vjlONNNEgpvHIGRtuzx++/LgRQmjp0JJgmQAqtAdfLkJ
 YpY1lGAWis9ADEi+SJCUaE0woOUY9hR3uXmr8drGmY4IegRi4kKBxCRU8B6pzqkrVbkY
 uBmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dm/e7fVVkyUEJNRr/yTEUzT0xvOhNYWpgvQvhHUhF68=;
 b=m833dHukhcWDAeICv+x5Y+PN0SNg4xBjTH8dTD3DzbJI0GNGYNsAfagevKY7I7DAl7
 gPTOJfSPXZrbA/F6rkE8sBE8BIz8zRwJmBT/XpHNrfQNz9rhrQdSt11vTRj4RmDtekoO
 P7TOSoebyRk3V3wp/WykjEUNnnGK80JBFlVopZiQjmjbBXBg/M8uYTZS61EbflZ5D9S5
 8LvuUWwiWq+Wo8q/jIF7Hy14foylrrUFat/nqGGByW3SWN547auyFK5eeIPnksrhZja1
 Ng8icbfg5pFipVolmbc9zaJAm5PRNzg05E8+vIoENHZ3a5z3CLy/La5Hvyik2xCGOd9m
 k9Sw==
X-Gm-Message-State: ANhLgQ093pNHOha2/C+uz31U8ONyWa9l6CIZ9fPCRNq/bqzGz5tQeqFo
 Q08YxnOViB7ztxU0n7cypMk=
X-Google-Smtp-Source: ADFU+vuCkgUSr5KTXA5g4+RQ2G5B4vEX0HXc+ZOFzelH2n6p5QuIzylG840VCzpvNwVRkr+/89Abxw==
X-Received: by 2002:adf:80af:: with SMTP id 44mr19311433wrl.241.1583736925115; 
 Sun, 08 Mar 2020 23:55:25 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id l5sm24320597wml.3.2020.03.08.23.55.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Mar 2020 23:55:24 -0700 (PDT)
To: jbx6244@gmail.com
References: <20200306170353.11393-1-jbx6244@gmail.com>
Subject: Re: [PATCH v1] dt-bindings: display: rockchip: convert rockchip vop
 bindings to yaml
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <590762ab-db79-c8b1-7f0e-b653ed4b1721@gmail.com>
Date: Mon, 9 Mar 2020 07:55:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200306170353.11393-1-jbx6244@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_235527_395133_9E90F279 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, airlied@linux.ie,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

Question for robh:

In the old txt situation we add/describe only properties that are used
by the driver/hardware itself. With yaml it also filters things in a
node that are used by other drivers like:

assigned-clocks:
assigned-clock-rates:
power-domains:

Should we add or not?

Kind regards,

Johan

PS: Will drop 'rockchip,grf' in v2 for px30, not used in vop driver?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
